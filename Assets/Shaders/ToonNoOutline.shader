/*
        Known bug: the normalDotLight dot product changes abruptly
        depending on the camera's position?????? -TW
*/

Shader "Toon without outline" {
	Properties {
		_Texture ("Texture", 2D) = "white" {}
		_Colour ("Base colour", COLOR) = (1,1,1,1)
		_DiffuseThreshold1 ("Diffuse threshold, first level", Range(-1,1)) = 0.6
		_Shading1 ("Shading, first level", COLOR) = (0.5, 0.5, 0.5, 1)
		_DiffuseThreshold2 ("Diffuse threshold, second level", Range(-1,1)) = 0.0
		_Shading2 ("Shading, second level", COLOR) = (0.0, 0.0, 0.0, 1)
	}
	SubShader {
		Tags {"RenderType" = "Opaque" }
		Pass {
			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			uniform sampler2D _Texture;
			uniform float4 _Colour;
			uniform float _DiffuseThreshold1;
			uniform float _DiffuseThreshold2;
			uniform float4 _Shading1;
			uniform float4 _Shading2;

			uniform float4 _LightColor0; 
			
			struct vIn 
			{
				float4 pos : POSITION;
				float4 normal : NORMAL;
				float4 tex : TEXCOORD0;
			};

			struct v2f 
			{
				float4 pos : SV_POSITION;
				float4 normal : TEXCOORD0;
				float3 lightDirection : TEXCOORD1;
				float4 tex : TEXCOORD2;
			};

			v2f vert(vIn input)
			{
				v2f output;

				output.pos = mul(UNITY_MATRIX_MVP, input.pos);
				output.normal = mul(input.normal, _World2Object);
				output.lightDirection = normalize(_WorldSpaceLightPos0.xyz);
				output.tex = input.tex;

				return output;
			}

			float4 frag(v2f input) : COLOR
			{
				float normalDotLight = dot(input.normal.xyz, input.lightDirection.xyz);
				float4 output = tex2D(_Texture, float2(input.tex.xy)) * _Colour;// * _LightColor0; Adding lightcolour messes some scenes up visually

				if(normalDotLight < _DiffuseThreshold2)
				{
					output *= _Shading2;
				}
				else if(normalDotLight < _DiffuseThreshold1)
				{
					output *= _Shading1;
				}
				
				return output;
			}
		
			ENDCG
		}
	} 
	FallBack Off
}