// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33629,y:33210,varname:node_3138,prsc:2|normal-7945-OUT,emission-8871-OUT,custl-125-OUT;n:type:ShaderForge.SFN_Dot,id:336,x:31675,y:32739,varname:node_336,prsc:2,dt:1|A-3654-OUT,B-983-OUT;n:type:ShaderForge.SFN_NormalVector,id:3654,x:31482,y:32739,prsc:2,pt:True;n:type:ShaderForge.SFN_Color,id:1051,x:31480,y:32366,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_1051,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8301887,c2:0.8301887,c3:0.8301887,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3796,x:31480,y:32547,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_3796,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4316,x:31690,y:32486,varname:node_4316,prsc:2|A-1051-RGB,B-3796-RGB;n:type:ShaderForge.SFN_Set,id:646,x:31841,y:32486,varname:DiffuseColor,prsc:2|IN-4316-OUT;n:type:ShaderForge.SFN_Set,id:5093,x:31856,y:32739,varname:directlight,prsc:2|IN-336-OUT;n:type:ShaderForge.SFN_Multiply,id:9062,x:31834,y:32877,varname:node_9062,prsc:2|A-336-OUT,B-6969-OUT;n:type:ShaderForge.SFN_LightVector,id:983,x:31482,y:32885,varname:node_983,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:6969,x:31482,y:33015,varname:node_6969,prsc:2;n:type:ShaderForge.SFN_Set,id:4703,x:32012,y:32895,varname:ShadowData,prsc:2|IN-9062-OUT;n:type:ShaderForge.SFN_Get,id:2655,x:31482,y:33195,varname:node_2655,prsc:2|IN-4703-OUT;n:type:ShaderForge.SFN_Multiply,id:5464,x:31706,y:33234,varname:node_5464,prsc:2|A-2655-OUT,B-8269-RGB;n:type:ShaderForge.SFN_LightColor,id:8269,x:31482,y:33271,varname:node_8269,prsc:2;n:type:ShaderForge.SFN_Set,id:7815,x:31867,y:33234,varname:DiffuseLight,prsc:2|IN-5464-OUT;n:type:ShaderForge.SFN_Dot,id:2584,x:31734,y:33491,varname:node_2584,prsc:2,dt:1|A-605-OUT,B-5773-OUT;n:type:ShaderForge.SFN_HalfVector,id:605,x:31493,y:33413,varname:node_605,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5773,x:31493,y:33572,prsc:2,pt:False;n:type:ShaderForge.SFN_Power,id:3586,x:32002,y:33517,varname:node_3586,prsc:2|VAL-2584-OUT,EXP-3876-OUT;n:type:ShaderForge.SFN_Exp,id:3876,x:31850,y:33656,varname:node_3876,prsc:2,et:0|IN-7261-OUT;n:type:ShaderForge.SFN_Slider,id:7261,x:31493,y:33756,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_7261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:4847,x:32225,y:33517,varname:node_4847,prsc:2|A-2863-OUT,B-3586-OUT,C-7043-RGB,D-9602-OUT;n:type:ShaderForge.SFN_Slider,id:2863,x:31845,y:33399,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:node_2863,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.676473,max:2;n:type:ShaderForge.SFN_Set,id:7848,x:32372,y:33517,varname:SpecularData,prsc:2|IN-4847-OUT;n:type:ShaderForge.SFN_Tex2d,id:2833,x:31823,y:33915,ptovrint:False,ptlb:SpecularMask,ptin:_SpecularMask,varname:node_2833,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Desaturate,id:223,x:31990,y:33915,varname:node_223,prsc:2|COL-2833-RGB;n:type:ShaderForge.SFN_OneMinus,id:9415,x:32003,y:34074,varname:node_9415,prsc:2|IN-223-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9602,x:32197,y:34059,ptovrint:False,ptlb:InvertSpecularMask,ptin:_InvertSpecularMask,varname:node_9602,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-223-OUT,B-9415-OUT;n:type:ShaderForge.SFN_Color,id:7043,x:32289,y:33846,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:node_7043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3519936,c2:0.6603774,c3:0.5991236,c4:1;n:type:ShaderForge.SFN_NormalVector,id:2753,x:31484,y:34272,prsc:2,pt:False;n:type:ShaderForge.SFN_NormalVector,id:6148,x:31484,y:34427,prsc:2,pt:True;n:type:ShaderForge.SFN_SwitchProperty,id:1143,x:31714,y:34314,ptovrint:False,ptlb:UsePerturbedNormals,ptin:_UsePerturbedNormals,varname:node_1143,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-2753-OUT,B-6148-OUT;n:type:ShaderForge.SFN_Dot,id:8586,x:31920,y:34344,varname:node_8586,prsc:2,dt:1|A-1143-OUT,B-9667-OUT;n:type:ShaderForge.SFN_ViewVector,id:9667,x:31714,y:34437,varname:node_9667,prsc:2;n:type:ShaderForge.SFN_Fresnel,id:1067,x:31902,y:34545,cmnt:Fresnel hace lo mismo que el view dir dot one minus y power,varname:node_1067,prsc:2;n:type:ShaderForge.SFN_Slider,id:2136,x:31714,y:34716,ptovrint:False,ptlb:RimPower,ptin:_RimPower,varname:node_2136,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Exp,id:8178,x:32088,y:34580,varname:node_8178,prsc:2,et:0|IN-2136-OUT;n:type:ShaderForge.SFN_OneMinus,id:2968,x:32073,y:34344,varname:node_2968,prsc:2|IN-8586-OUT;n:type:ShaderForge.SFN_Power,id:8589,x:32238,y:34344,varname:node_8589,prsc:2|VAL-2968-OUT,EXP-8178-OUT;n:type:ShaderForge.SFN_Multiply,id:7958,x:32403,y:34344,varname:node_7958,prsc:2|A-8589-OUT,B-3725-OUT,C-4249-OUT;n:type:ShaderForge.SFN_Color,id:5936,x:32249,y:34592,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:node_5936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8962264,c2:0.5368903,c3:0.5368903,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:4249,x:32438,y:34592,ptovrint:False,ptlb:RimLightColor,ptin:_RimLightColor,varname:node_4249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1166-RGB,B-5936-RGB;n:type:ShaderForge.SFN_LightColor,id:1166,x:32232,y:34737,varname:node_1166,prsc:2;n:type:ShaderForge.SFN_Slider,id:3725,x:31995,y:34269,ptovrint:False,ptlb:RimIntensity,ptin:_RimIntensity,varname:node_3725,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Set,id:2603,x:32558,y:34344,varname:RimData,prsc:2|IN-7958-OUT;n:type:ShaderForge.SFN_Vector3,id:5638,x:32971,y:32954,varname:node_5638,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Tex2d,id:7907,x:32971,y:33069,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:node_7907,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:7945,x:33214,y:33041,varname:node_7945,prsc:2|A-5638-OUT,B-7907-RGB,T-1826-OUT;n:type:ShaderForge.SFN_Slider,id:1826,x:32892,y:33251,ptovrint:False,ptlb:normal_intensity,ptin:_normal_intensity,varname:node_1826,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_AmbientLight,id:4168,x:32971,y:33410,varname:node_4168,prsc:2;n:type:ShaderForge.SFN_Get,id:9006,x:32894,y:33593,varname:node_9006,prsc:2|IN-646-OUT;n:type:ShaderForge.SFN_Multiply,id:8871,x:33158,y:33462,varname:node_8871,prsc:2|A-4168-RGB,B-9006-OUT;n:type:ShaderForge.SFN_Multiply,id:8674,x:33135,y:33649,varname:node_8674,prsc:2|A-9006-OUT,B-3513-OUT;n:type:ShaderForge.SFN_Get,id:3513,x:32851,y:33698,varname:node_3513,prsc:2|IN-7815-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1643,x:33053,y:33810,ptovrint:False,ptlb:useSpecularColor,ptin:_useSpecularColor,varname:node_1643,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8693-OUT,B-3513-OUT;n:type:ShaderForge.SFN_Get,id:8693,x:32842,y:33874,varname:node_8693,prsc:2|IN-4703-OUT;n:type:ShaderForge.SFN_Get,id:7105,x:33015,y:33942,varname:node_7105,prsc:2|IN-7848-OUT;n:type:ShaderForge.SFN_Multiply,id:1737,x:33222,y:33862,varname:node_1737,prsc:2|A-1643-OUT,B-7105-OUT;n:type:ShaderForge.SFN_Add,id:125,x:33442,y:33722,varname:node_125,prsc:2|A-8674-OUT,B-1737-OUT,C-5383-OUT;n:type:ShaderForge.SFN_Get,id:4014,x:32988,y:34074,varname:node_4014,prsc:2|IN-2603-OUT;n:type:ShaderForge.SFN_Get,id:5688,x:32988,y:34136,varname:node_5688,prsc:2|IN-4703-OUT;n:type:ShaderForge.SFN_Multiply,id:5368,x:33170,y:34136,varname:node_5368,prsc:2|A-4014-OUT,B-5688-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5383,x:33340,y:34098,ptovrint:False,ptlb:UseRimShadows,ptin:_UseRimShadows,varname:node_5383,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-4014-OUT,B-5368-OUT;proporder:7907-1826-1051-3796-7261-2863-2833-9602-7043-1143-2136-5936-4249-3725-1643-5383;pass:END;sub:END;*/

Shader "Shader Forge/01_CustomLight" {
    Properties {
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _normal_intensity ("normal_intensity", Range(0, 1)) = 0
        _MainColor ("MainColor", Color) = (0.8301887,0.8301887,0.8301887,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _SpecularPower ("SpecularPower", Range(0, 10)) = 0
        _SpecularIntensity ("SpecularIntensity", Range(0, 2)) = 0.676473
        _SpecularMask ("SpecularMask", 2D) = "white" {}
        [MaterialToggle] _InvertSpecularMask ("InvertSpecularMask", Float ) = 0
        _SpecularColor ("SpecularColor", Color) = (0.3519936,0.6603774,0.5991236,1)
        [MaterialToggle] _UsePerturbedNormals ("UsePerturbedNormals", Float ) = 0
        _RimPower ("RimPower", Range(0, 2)) = 0
        _RimColor ("RimColor", Color) = (0.8962264,0.5368903,0.5368903,1)
        [MaterialToggle] _RimLightColor ("RimLightColor", Float ) = 0
        _RimIntensity ("RimIntensity", Range(0, 2)) = 0
        [MaterialToggle] _useSpecularColor ("useSpecularColor", Float ) = 0
        [MaterialToggle] _UseRimShadows ("UseRimShadows", Float ) = 0
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
            uniform sampler2D _SpecularMask; uniform float4 _SpecularMask_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularIntensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _InvertSpecularMask)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UsePerturbedNormals)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimPower)
                UNITY_DEFINE_INSTANCED_PROP( float4, _RimColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _RimLightColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _normal_intensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _useSpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseRimShadows)
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
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float _normal_intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _normal_intensity );
                float3 normalLocal = lerp(float3(0,0,1),_NormalMap_var.rgb,_normal_intensity_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 DiffuseColor = (_MainColor_var.rgb*_MainTex_var.rgb);
                float3 node_9006 = DiffuseColor;
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*node_9006);
                float node_336 = max(0,dot(normalDirection,lightDirection));
                float ShadowData = (node_336*attenuation);
                float3 DiffuseLight = (ShadowData*_LightColor0.rgb);
                float3 node_3513 = DiffuseLight;
                float3 _useSpecularColor_var = lerp( ShadowData, node_3513, UNITY_ACCESS_INSTANCED_PROP( Props, _useSpecularColor ) );
                float _SpecularIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularIntensity );
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float4 _SpecularColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularColor );
                float4 _SpecularMask_var = tex2D(_SpecularMask,TRANSFORM_TEX(i.uv0, _SpecularMask));
                float node_223 = dot(_SpecularMask_var.rgb,float3(0.3,0.59,0.11));
                float _InvertSpecularMask_var = lerp( node_223, (1.0 - node_223), UNITY_ACCESS_INSTANCED_PROP( Props, _InvertSpecularMask ) );
                float3 SpecularData = (_SpecularIntensity_var*pow(max(0,dot(halfDirection,i.normalDir)),exp(_SpecularPower_var))*_SpecularColor_var.rgb*_InvertSpecularMask_var);
                float3 _UsePerturbedNormals_var = lerp( i.normalDir, normalDirection, UNITY_ACCESS_INSTANCED_PROP( Props, _UsePerturbedNormals ) );
                float _RimPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimPower );
                float _RimIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimIntensity );
                float4 _RimColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimColor );
                float3 _RimLightColor_var = lerp( _LightColor0.rgb, _RimColor_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _RimLightColor ) );
                float3 RimData = (pow((1.0 - max(0,dot(_UsePerturbedNormals_var,viewDirection))),exp(_RimPower_var))*_RimIntensity_var*_RimLightColor_var);
                float3 node_4014 = RimData;
                float3 _UseRimShadows_var = lerp( node_4014, (node_4014*ShadowData), UNITY_ACCESS_INSTANCED_PROP( Props, _UseRimShadows ) );
                float3 finalColor = emissive + ((node_9006*node_3513)+(_useSpecularColor_var*SpecularData)+_UseRimShadows_var);
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
            uniform sampler2D _SpecularMask; uniform float4 _SpecularMask_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularIntensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _InvertSpecularMask)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UsePerturbedNormals)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimPower)
                UNITY_DEFINE_INSTANCED_PROP( float4, _RimColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _RimLightColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _RimIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _normal_intensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _useSpecularColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseRimShadows)
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
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float _normal_intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _normal_intensity );
                float3 normalLocal = lerp(float3(0,0,1),_NormalMap_var.rgb,_normal_intensity_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 DiffuseColor = (_MainColor_var.rgb*_MainTex_var.rgb);
                float3 node_9006 = DiffuseColor;
                float node_336 = max(0,dot(normalDirection,lightDirection));
                float ShadowData = (node_336*attenuation);
                float3 DiffuseLight = (ShadowData*_LightColor0.rgb);
                float3 node_3513 = DiffuseLight;
                float3 _useSpecularColor_var = lerp( ShadowData, node_3513, UNITY_ACCESS_INSTANCED_PROP( Props, _useSpecularColor ) );
                float _SpecularIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularIntensity );
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float4 _SpecularColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularColor );
                float4 _SpecularMask_var = tex2D(_SpecularMask,TRANSFORM_TEX(i.uv0, _SpecularMask));
                float node_223 = dot(_SpecularMask_var.rgb,float3(0.3,0.59,0.11));
                float _InvertSpecularMask_var = lerp( node_223, (1.0 - node_223), UNITY_ACCESS_INSTANCED_PROP( Props, _InvertSpecularMask ) );
                float3 SpecularData = (_SpecularIntensity_var*pow(max(0,dot(halfDirection,i.normalDir)),exp(_SpecularPower_var))*_SpecularColor_var.rgb*_InvertSpecularMask_var);
                float3 _UsePerturbedNormals_var = lerp( i.normalDir, normalDirection, UNITY_ACCESS_INSTANCED_PROP( Props, _UsePerturbedNormals ) );
                float _RimPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimPower );
                float _RimIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimIntensity );
                float4 _RimColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RimColor );
                float3 _RimLightColor_var = lerp( _LightColor0.rgb, _RimColor_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _RimLightColor ) );
                float3 RimData = (pow((1.0 - max(0,dot(_UsePerturbedNormals_var,viewDirection))),exp(_RimPower_var))*_RimIntensity_var*_RimLightColor_var);
                float3 node_4014 = RimData;
                float3 _UseRimShadows_var = lerp( node_4014, (node_4014*ShadowData), UNITY_ACCESS_INSTANCED_PROP( Props, _UseRimShadows ) );
                float3 finalColor = ((node_9006*node_3513)+(_useSpecularColor_var*SpecularData)+_UseRimShadows_var);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
