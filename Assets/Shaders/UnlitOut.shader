// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32834,y:32645,varname:node_3138,prsc:2|normal-4346-RGB,emission-3838-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32256,y:32785,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9568628,c3:0.764706,c4:1;n:type:ShaderForge.SFN_NormalVector,id:3871,x:30947,y:32275,prsc:2,pt:True;n:type:ShaderForge.SFN_Abs,id:7143,x:31114,y:32275,varname:node_7143,prsc:2|IN-3871-OUT;n:type:ShaderForge.SFN_LightVector,id:9596,x:31114,y:32404,varname:node_9596,prsc:2;n:type:ShaderForge.SFN_Dot,id:8363,x:31322,y:32337,varname:node_8363,prsc:2,dt:1|A-7143-OUT,B-9596-OUT;n:type:ShaderForge.SFN_Lerp,id:7165,x:31521,y:32454,varname:node_7165,prsc:2|A-8363-OUT,B-6808-OUT,T-3190-OUT;n:type:ShaderForge.SFN_Vector1,id:6808,x:31322,y:32488,varname:node_6808,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:3190,x:31107,y:32592,ptovrint:False,ptlb:ShadowIntensity,ptin:_ShadowIntensity,varname:node_3190,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.15,max:1;n:type:ShaderForge.SFN_Set,id:2854,x:31690,y:32454,varname:LightData,prsc:2|IN-7165-OUT;n:type:ShaderForge.SFN_Multiply,id:6182,x:31521,y:32614,varname:node_6182,prsc:2|A-7165-OUT,B-9083-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9083,x:31302,y:32661,varname:node_9083,prsc:2;n:type:ShaderForge.SFN_Lerp,id:1586,x:31711,y:32630,varname:node_1586,prsc:2|A-6182-OUT,B-6808-OUT,T-6811-OUT;n:type:ShaderForge.SFN_Slider,id:6811,x:31385,y:32811,ptovrint:False,ptlb:sombras,ptin:_sombras,varname:node_6811,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2173864,max:1;n:type:ShaderForge.SFN_Set,id:4902,x:31856,y:32630,varname:ShadowData,prsc:2|IN-1586-OUT;n:type:ShaderForge.SFN_Tex2d,id:5950,x:32256,y:32961,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5950,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:66321cc856b03e245ac41ed8a53e0ecc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9624,x:32481,y:32888,varname:node_9624,prsc:2|A-7241-RGB,B-5950-RGB,C-2870-OUT;n:type:ShaderForge.SFN_Tex2d,id:4346,x:32481,y:32727,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_4346,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8eb0710a9ac73a7469e36623cdb0e47f,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Get,id:2870,x:32256,y:33129,varname:node_2870,prsc:2|IN-4902-OUT;n:type:ShaderForge.SFN_ScreenPos,id:2221,x:31192,y:33103,varname:node_2221,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:8148,x:31366,y:33103,varname:node_8148,prsc:2|UVIN-2221-UVOUT;n:type:ShaderForge.SFN_Set,id:1715,x:31529,y:33103,varname:Background,prsc:2|IN-8148-RGB;n:type:ShaderForge.SFN_Slider,id:6873,x:31269,y:33636,ptovrint:False,ptlb:transicion,ptin:_transicion,varname:node_6873,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:4073,x:31395,y:33421,ptovrint:False,ptlb:TansitionMask,ptin:_TansitionMask,varname:node_4073,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:2055,x:32645,y:32888,varname:MainTex,prsc:2|IN-9624-OUT;n:type:ShaderForge.SFN_Add,id:9503,x:31592,y:33651,varname:node_9503,prsc:2|A-6873-OUT,B-9467-OUT;n:type:ShaderForge.SFN_Slider,id:9467,x:31282,y:33732,ptovrint:False,ptlb:grosorTransi,ptin:_grosorTransi,varname:node_9467,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05826087,max:0.1;n:type:ShaderForge.SFN_Step,id:8469,x:31771,y:33469,varname:node_8469,prsc:2|A-4073-G,B-6873-OUT;n:type:ShaderForge.SFN_Step,id:5913,x:31771,y:33617,varname:node_5913,prsc:2|A-4073-G,B-9503-OUT;n:type:ShaderForge.SFN_Color,id:633,x:31890,y:33748,ptovrint:False,ptlb:EmissiveColor,ptin:_EmissiveColor,varname:node_633,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5821022,c2:0.9716981,c3:0.9565981,c4:1;n:type:ShaderForge.SFN_Get,id:3802,x:31866,y:33392,varname:node_3802,prsc:2|IN-2055-OUT;n:type:ShaderForge.SFN_Get,id:3032,x:31902,y:33578,varname:node_3032,prsc:2|IN-1715-OUT;n:type:ShaderForge.SFN_Lerp,id:7253,x:32095,y:33633,varname:node_7253,prsc:2|A-3032-OUT,B-633-RGB,T-5913-OUT;n:type:ShaderForge.SFN_Lerp,id:3838,x:32251,y:33529,varname:node_3838,prsc:2|A-7253-OUT,B-3802-OUT,T-8469-OUT;n:type:ShaderForge.SFN_Set,id:3839,x:32428,y:33529,varname:EndTex,prsc:2|IN-3838-OUT;proporder:7241-5950-4346-3190-6811-6873-4073-9467-633;pass:END;sub:END;*/

Shader "Shader Forge/Unlit" {
    Properties {
        _MainColor ("MainColor", Color) = (1,0.9568628,0.764706,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _ShadowIntensity ("ShadowIntensity", Range(0, 1)) = 0.15
        _sombras ("sombras", Range(0, 1)) = 0.2173864
        _transicion ("transicion", Range(0, 1)) = 0
        _TansitionMask ("TansitionMask", 2D) = "white" {}
        _grosorTransi ("grosorTransi", Range(0, 0.1)) = 0.05826087
        [HDR]_EmissiveColor ("EmissiveColor", Color) = (0.5821022,0.9716981,0.9565981,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _TansitionMask; uniform float4 _TansitionMask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ShadowIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _sombras)
                UNITY_DEFINE_INSTANCED_PROP( float, _transicion)
                UNITY_DEFINE_INSTANCED_PROP( float, _grosorTransi)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EmissiveColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = 1;
////// Emissive:
                float3 Background = tex2D( _GrabTexture, sceneUVs.rg).rgb;
                float4 _EmissiveColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EmissiveColor );
                float4 _TansitionMask_var = tex2D(_TansitionMask,TRANSFORM_TEX(i.uv0, _TansitionMask));
                float _transicion_var = UNITY_ACCESS_INSTANCED_PROP( Props, _transicion );
                float _grosorTransi_var = UNITY_ACCESS_INSTANCED_PROP( Props, _grosorTransi );
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_6808 = 1.0;
                float _ShadowIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ShadowIntensity );
                float node_7165 = lerp(max(0,dot(abs(normalDirection),lightDirection)),node_6808,_ShadowIntensity_var);
                float _sombras_var = UNITY_ACCESS_INSTANCED_PROP( Props, _sombras );
                float ShadowData = lerp((node_7165*attenuation),node_6808,_sombras_var);
                float3 MainTex = (_MainColor_var.rgb*_MainTex_var.rgb*ShadowData);
                float3 node_3838 = lerp(lerp(Background,_EmissiveColor_var.rgb,step(_TansitionMask_var.g,(_transicion_var+_grosorTransi_var))),MainTex,step(_TansitionMask_var.g,_transicion_var));
                float3 emissive = node_3838;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _TansitionMask; uniform float4 _TansitionMask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ShadowIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _sombras)
                UNITY_DEFINE_INSTANCED_PROP( float, _transicion)
                UNITY_DEFINE_INSTANCED_PROP( float, _grosorTransi)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EmissiveColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
