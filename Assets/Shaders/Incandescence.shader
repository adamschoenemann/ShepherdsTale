Shader "Custom/Incandescence" {
	Properties {
		_Color ("Color", COLOR) = (1,1,1,1)
	}
	SubShader {
		Pass {			
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			uniform float4 _Color;

			struct vIn
			{
				float4 pos : POSITION;
			};

			struct v2f
			{
				float4 pos : SV_POSITION;
			};

			v2f vert(vIn input)
			{
				v2f output;
				output.pos = mul(UNITY_MATRIX_MVP, input.pos);
				return output;
			}

			float4 frag(v2f input) : COLOR
			{
				return _Color;
			}

			ENDCG
		}
	} 
	FallBack "Diffuse"
}
