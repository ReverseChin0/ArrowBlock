// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|normal-4346-RGB,emission-9624-OUT,custl-4121-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32256,y:32785,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9568628,c3:0.764706,c4:1;n:type:ShaderForge.SFN_NormalVector,id:3871,x:30947,y:32275,prsc:2,pt:True;n:type:ShaderForge.SFN_Abs,id:7143,x:31114,y:32275,varname:node_7143,prsc:2|IN-3871-OUT;n:type:ShaderForge.SFN_LightVector,id:9596,x:31114,y:32404,varname:node_9596,prsc:2;n:type:ShaderForge.SFN_Dot,id:8363,x:31322,y:32337,varname:node_8363,prsc:2,dt:1|A-7143-OUT,B-9596-OUT;n:type:ShaderForge.SFN_Lerp,id:7165,x:31521,y:32454,varname:node_7165,prsc:2|A-8363-OUT,B-6808-OUT,T-3190-OUT;n:type:ShaderForge.SFN_Vector1,id:6808,x:31322,y:32488,varname:node_6808,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:3190,x:31107,y:32592,ptovrint:False,ptlb:ShadowIntensity,ptin:_ShadowIntensity,varname:node_3190,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.15,max:1;n:type:ShaderForge.SFN_Set,id:2854,x:31690,y:32454,varname:LightData,prsc:2|IN-7165-OUT;n:type:ShaderForge.SFN_Multiply,id:6182,x:31521,y:32614,varname:node_6182,prsc:2|A-7165-OUT,B-9083-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9083,x:31302,y:32661,varname:node_9083,prsc:2;n:type:ShaderForge.SFN_Lerp,id:1586,x:31711,y:32630,varname:node_1586,prsc:2|A-6182-OUT,B-6808-OUT,T-6811-OUT;n:type:ShaderForge.SFN_Slider,id:6811,x:31385,y:32811,ptovrint:False,ptlb:sombras,ptin:_sombras,varname:node_6811,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2173864,max:1;n:type:ShaderForge.SFN_Set,id:4902,x:31856,y:32630,varname:ShadowData,prsc:2|IN-1586-OUT;n:type:ShaderForge.SFN_Tex2d,id:5950,x:32256,y:32961,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5950,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9624,x:32481,y:32888,varname:node_9624,prsc:2|A-7241-RGB,B-5950-RGB,C-2870-OUT;n:type:ShaderForge.SFN_Tex2d,id:4346,x:32481,y:32727,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_4346,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8eb0710a9ac73a7469e36623cdb0e47f,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Get,id:2870,x:32256,y:33129,varname:node_2870,prsc:2|IN-4902-OUT;n:type:ShaderForge.SFN_NormalVector,id:9715,x:31448,y:33635,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:5507,x:31654,y:33696,varname:node_5507,prsc:2,dt:1|A-9715-OUT,B-3923-OUT;n:type:ShaderForge.SFN_ViewVector,id:3923,x:31448,y:33789,varname:node_3923,prsc:2;n:type:ShaderForge.SFN_Fresnel,id:7886,x:31636,y:33897,cmnt:Fresnel hace lo mismo que el view dir dot one minus y power,varname:node_7886,prsc:2;n:type:ShaderForge.SFN_Slider,id:3404,x:31448,y:34068,ptovrint:False,ptlb:RimPowe,ptin:_RimPowe,varname:_RimPower_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4524255,max:2;n:type:ShaderForge.SFN_Exp,id:9454,x:31822,y:33932,varname:node_9454,prsc:2,et:0|IN-3404-OUT;n:type:ShaderForge.SFN_OneMinus,id:3820,x:31807,y:33696,varname:node_3820,prsc:2|IN-5507-OUT;n:type:ShaderForge.SFN_Power,id:2640,x:31972,y:33696,varname:node_2640,prsc:2|VAL-3820-OUT,EXP-9454-OUT;n:type:ShaderForge.SFN_Multiply,id:3371,x:32137,y:33696,varname:node_3371,prsc:2|A-2640-OUT,B-4438-OUT,C-2527-RGB;n:type:ShaderForge.SFN_Color,id:2527,x:31983,y:33944,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:_RimColor_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03208439,c2:0.8876946,c3:0.9716981,c4:1;n:type:ShaderForge.SFN_Slider,id:4438,x:31729,y:33621,ptovrint:False,ptlb:RimIntensity,ptin:_RimIntensity,varname:_RimIntensity_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Set,id:2268,x:32292,y:33696,varname:RimData,prsc:2|IN-3371-OUT;n:type:ShaderForge.SFN_Dot,id:4649,x:30507,y:33038,varname:node_4649,prsc:2,dt:1|A-4643-OUT,B-2244-OUT;n:type:ShaderForge.SFN_HalfVector,id:4643,x:30266,y:32960,varname:node_4643,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2244,x:30266,y:33119,prsc:2,pt:False;n:type:ShaderForge.SFN_Power,id:5074,x:30775,y:33064,varname:node_5074,prsc:2|VAL-4649-OUT,EXP-8929-OUT;n:type:ShaderForge.SFN_Exp,id:8929,x:30623,y:33203,varname:node_8929,prsc:2,et:0|IN-7051-OUT;n:type:ShaderForge.SFN_Slider,id:7051,x:30266,y:33310,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_7261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.189517,max:10;n:type:ShaderForge.SFN_Multiply,id:4441,x:30998,y:33064,varname:node_4441,prsc:2|A-2476-OUT,B-5074-OUT,C-7846-RGB,D-3512-OUT;n:type:ShaderForge.SFN_Set,id:8893,x:31145,y:33064,varname:SpecularData,prsc:2|IN-4441-OUT;n:type:ShaderForge.SFN_Tex2d,id:9395,x:30596,y:33462,ptovrint:False,ptlb:SpecularMask,ptin:_SpecularMask,varname:node_2833,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c0bb477cacb4a20469f224f3447cc346,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Desaturate,id:6702,x:30763,y:33462,varname:node_6702,prsc:2|COL-9395-RGB;n:type:ShaderForge.SFN_OneMinus,id:4315,x:30776,y:33621,varname:node_4315,prsc:2|IN-6702-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3512,x:30970,y:33606,ptovrint:False,ptlb:InvertSpecularMask,ptin:_InvertSpecularMask,varname:node_9602,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6702-OUT,B-4315-OUT;n:type:ShaderForge.SFN_Color,id:7846,x:31062,y:33393,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:node_7043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.509434,c2:0.5025285,c3:0.4157174,c4:1;n:type:ShaderForge.SFN_Slider,id:2476,x:30618,y:32946,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:node_2863,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Get,id:9768,x:32154,y:33289,varname:node_9768,prsc:2|IN-8893-OUT;n:type:ShaderForge.SFN_Add,id:4121,x:32436,y:33252,varname:node_4121,prsc:2|A-9768-OUT,B-7412-OUT;n:type:ShaderForge.SFN_Get,id:7412,x:32163,y:33359,varname:node_7412,prsc:2|IN-2268-OUT;proporder:7241-7846-2527-5950-4346-9395-3512-3190-6811-7051-2476-3404-4438;pass:END;sub:END;*/

Shader "Shader Forge/Unlit" {
    Properties {
        _MainColor ("MainColor", Color) = (1,0.9568628,0.764706,1)
        _SpecularColor ("SpecularColor", Color) = (0.509434,0.5025285,0.4157174,1)
        [HDR]_RimColor ("RimColor", Color) = (0.03208439,0.8876946,0.9716981,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _SpecularMask ("SpecularMask", 2D) = "white" {}
        [MaterialToggle] _InvertSpecularMask ("InvertSpecularMask", Float ) = 0
        _ShadowIntensity ("ShadowIntensity", Range(0, 1)) = 0.15
        _sombras ("sombras", Range(0, 1)) = 0.2173864
        _SpecularPower ("SpecularPower", Range(0, 10)) = 2.189517
        _SpecularIntensity ("SpecularIntensity", Range(0, 2)) = 2
        _RimPowe ("RimPowe", Range(0, 2)) = 0.4524255
        _RimIntensity ("RimIntensity", Range(0, 5)) = 5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _SpecularMask; uniform float4 _SpecularMask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ShadowIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _sombras)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimPowe)
                UNITY_DEFINE_INSTANCED_PROP( float4, _RimColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _InvertSpecularMask)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularIntensity)
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
                LIGHTING_COORDS(5,6)
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
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_6808 = 1.0;
                float _ShadowIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ShadowIntensity );
                float node_7165 = lerp(max(0,dot(abs(normalDirection),lightDirection)),node_6808,_ShadowIntensity_var);
                float _sombras_var = UNITY_ACCESS_INSTANCED_PROP( Props, _sombras );
                float ShadowData = lerp((node_7165*attenuation),node_6808,_sombras_var);
                float3 emissive = (_MainColor_var.rgb*_MainTex_var.rgb*ShadowData);
                float _SpecularIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularIntensity );
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float4 _SpecularColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularColor );
                float4 _SpecularMask_var = tex2D(_SpecularMask,TRANSFORM_TEX(i.uv0, _SpecularMask));
                float node_6702 = dot(_SpecularMask_var.rgb,float3(0.3,0.59,0.11));
                float _InvertSpecularMask_var = lerp( node_6702, (1.0 - node_6702), UNITY_ACCESS_INSTANCED_PROP( Props, _InvertSpecularMask ) );
                float3 SpecularData = (_SpecularIntensity_var*pow(max(0,dot(halfDirection,i.normalDir)),exp(_SpecularPower_var))*_SpecularColor_var.rgb*_InvertSpecularMask_var);
                float _RimPowe_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimPowe );
                float _RimIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimIntensity );
                float4 _RimColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimColor );
                float3 RimData = (pow((1.0 - max(0,dot(i.normalDir,viewDirection))),exp(_RimPowe_var))*_RimIntensity_var*_RimColor_var.rgb);
                float3 finalColor = emissive + (SpecularData+RimData);
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _SpecularMask; uniform float4 _SpecularMask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _ShadowIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _sombras)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimPowe)
                UNITY_DEFINE_INSTANCED_PROP( float4, _RimColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _InvertSpecularMask)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularIntensity)
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
                LIGHTING_COORDS(5,6)
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
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float _SpecularIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularIntensity );
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float4 _SpecularColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularColor );
                float4 _SpecularMask_var = tex2D(_SpecularMask,TRANSFORM_TEX(i.uv0, _SpecularMask));
                float node_6702 = dot(_SpecularMask_var.rgb,float3(0.3,0.59,0.11));
                float _InvertSpecularMask_var = lerp( node_6702, (1.0 - node_6702), UNITY_ACCESS_INSTANCED_PROP( Props, _InvertSpecularMask ) );
                float3 SpecularData = (_SpecularIntensity_var*pow(max(0,dot(halfDirection,i.normalDir)),exp(_SpecularPower_var))*_SpecularColor_var.rgb*_InvertSpecularMask_var);
                float _RimPowe_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimPowe );
                float _RimIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimIntensity );
                float4 _RimColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimColor );
                float3 RimData = (pow((1.0 - max(0,dot(i.normalDir,viewDirection))),exp(_RimPowe_var))*_RimIntensity_var*_RimColor_var.rgb);
                float3 finalColor = (SpecularData+RimData);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
