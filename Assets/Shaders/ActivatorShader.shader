Shader "Custom/ActivatorShader" {
	Properties {
		_Colour ("Base colour", COLOR) = (1,1,0,1)
	}
	SubShader {
		Tags { "RenderType"="Transparent" }

			Pass 
			{
			
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			float4 _Colour;

			struct vIn 
			{
				float4 pos : POSITION;
			};

			struct v2f 
			{
				float4 screenPos : SV_POSITION;
				float4 objPos : TEXCOORD0;
			};

			v2f vert(vIn input)
			{
				v2f output;

				output.screenPos = mul(UNITY_MATRIX_MVP, input.pos);
				output.objPos = input.pos;

				return output;
			}

			float4 frag(v2f input) : COLOR
			{
				return _Colour * float4(1,1,1,input.objPos.y);
			}

			
			ENDCG
		}
	} 
	FallBack "Diffuse"
}
