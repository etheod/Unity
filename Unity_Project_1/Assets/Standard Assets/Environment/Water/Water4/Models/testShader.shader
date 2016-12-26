Shader "Custom/testShader" {
	Properties {
		_Color ("Color", Color) = (1.0,1.0,1.0,1.0)
	}
	SubShader{
		Pass{
			CGPROGRAM
			//pragmas ->instructions to tell unity where to look for each function
			#pragma vertex vert
			#pragma fragment frag
			//user defined variables
			uniform float4 _Color;    
			//base input structs
			struct vertexInput{
				float4 vertex:POSITION;
			};
			struct vertexOutput{
				float4 pos:SV_POSITION; 
			
			};
			//vertex function
			//TAKE VERTEX POSITION FROM VERTEXINPUT CONVERT IT TO UNITYS MATRIX AND RETURN IT TO POS
			//UNITY WILL TAKE POS FROM VERTEXOUTPUT AND USE IT TO OUR MODEL
			vertexOutput vert(vertexInput v){
				vertexOutput o;
				o.pos=mul(UNITY_MATRIX_MVP,v.vertex);
				return o;
			}
			//fragment function
			float4 frag(vertexOutput i):COLOR
			{
			return _Color;
			}
			ENDCG
		}
	}
	//Fallback "Diffuse"
}
