// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:3,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:33130,y:32692,varname:node_2865,prsc:2|diff-4228-OUT,spec-7076-RGB,gloss-4676-OUT,normal-8134-OUT,amspl-5497-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31912,y:32646,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5964,x:31925,y:32940,ptovrint:True,ptlb:Base Normal,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ChannelBlend,id:6821,x:32200,y:32786,varname:node_6821,prsc:2,chbt:0|M-7497-RGB,R-4387-RGB,G-7272-RGB,B-3684-RGB,BTM-7736-RGB;n:type:ShaderForge.SFN_Tex2d,id:3684,x:31531,y:32795,ptovrint:False,ptlb:Blue Color,ptin:_BlueColor,varname:node_3684,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3085-OUT;n:type:ShaderForge.SFN_Tex2d,id:4387,x:31994,y:32163,ptovrint:False,ptlb:Red Color,ptin:_RedColor,varname:node_4387,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1475-OUT;n:type:ShaderForge.SFN_Tex2d,id:7272,x:31627,y:32491,ptovrint:False,ptlb:Green Color,ptin:_GreenColor,varname:node_7272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6445-OUT;n:type:ShaderForge.SFN_Lerp,id:1756,x:32493,y:32743,varname:node_1756,prsc:2|A-6821-OUT,B-7736-RGB,T-4239-OUT;n:type:ShaderForge.SFN_Slider,id:4239,x:32142,y:32708,ptovrint:False,ptlb:blend,ptin:_blend,varname:node_4239,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4786325,max:1;n:type:ShaderForge.SFN_Multiply,id:1475,x:31805,y:32244,varname:node_1475,prsc:2|A-9246-UVOUT,B-6127-OUT;n:type:ShaderForge.SFN_TexCoord,id:9246,x:31242,y:32270,varname:node_9246,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:6127,x:31559,y:32401,ptovrint:False,ptlb:redtilling,ptin:_redtilling,varname:node_6127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Tex2d,id:3074,x:31994,y:32358,ptovrint:False,ptlb:RedNormal,ptin:_RedNormal,varname:node_3074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-1475-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:5551,x:32529,y:32556,varname:node_5551,prsc:2,chbt:0|M-7497-RGB,R-3074-RGB,G-3793-RGB,B-8909-RGB;n:type:ShaderForge.SFN_Multiply,id:6445,x:31403,y:32466,varname:node_6445,prsc:2|A-9246-UVOUT,B-6274-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6274,x:31175,y:32519,ptovrint:False,ptlb:GreenTilling,ptin:_GreenTilling,varname:node_6274,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Tex2d,id:3793,x:32240,y:32499,ptovrint:False,ptlb:GreenNormal,ptin:_GreenNormal,varname:node_3793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-6445-OUT;n:type:ShaderForge.SFN_Multiply,id:3085,x:31272,y:32669,varname:node_3085,prsc:2|A-9246-UVOUT,B-5992-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5992,x:31107,y:32703,ptovrint:False,ptlb:BlueTilling,ptin:_BlueTilling,varname:node_5992,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Tex2d,id:8909,x:31305,y:32853,ptovrint:False,ptlb:BlueNormal,ptin:_BlueNormal,varname:node_8909,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-3085-OUT;n:type:ShaderForge.SFN_Tex2d,id:7076,x:32655,y:32823,ptovrint:False,ptlb:BaseSpecular,ptin:_BaseSpecular,varname:node_7076,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7497,x:32631,y:32227,ptovrint:False,ptlb:splatmap,ptin:_splatmap,varname:node_7497,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalBlend,id:8134,x:32715,y:32671,varname:node_8134,prsc:2|BSE-5551-OUT,DTL-5964-RGB;n:type:ShaderForge.SFN_Cubemap,id:9044,x:32471,y:33095,ptovrint:False,ptlb:reflection,ptin:_reflection,varname:node_9044,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0;n:type:ShaderForge.SFN_Slider,id:9099,x:32471,y:33282,ptovrint:False,ptlb:reflectadd,ptin:_reflectadd,varname:node_9099,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:3272,x:32720,y:33011,varname:node_3272,prsc:2|A-9044-RGB,B-9099-OUT;n:type:ShaderForge.SFN_Multiply,id:5497,x:32922,y:32976,varname:node_5497,prsc:2|A-3272-OUT,B-7076-RGB;n:type:ShaderForge.SFN_Tex2d,id:3032,x:32787,y:32456,ptovrint:False,ptlb:detailoverlay,ptin:_detailoverlay,varname:node_3032,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Blend,id:4228,x:33130,y:32438,varname:node_4228,prsc:2,blmd:10,clmp:True|SRC-3032-RGB,DST-1756-OUT;n:type:ShaderForge.SFN_Multiply,id:4676,x:32952,y:32631,varname:node_4676,prsc:2|A-3032-A,B-7076-A;proporder:7736-7076-5964-7497-4239-4387-3074-6127-7272-3793-6274-3684-8909-5992-9044-9099-3032;pass:END;sub:END;*/

Shader "Custom/splatmapblend" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _BaseSpecular ("BaseSpecular", 2D) = "gray" {}
        _BumpMap ("Base Normal", 2D) = "bump" {}
        _splatmap ("splatmap", 2D) = "white" {}
        _blend ("blend", Range(0, 1)) = 0.4786325
        _RedColor ("Red Color", 2D) = "white" {}
        _RedNormal ("RedNormal", 2D) = "bump" {}
        _redtilling ("redtilling", Float ) = 20
        _GreenColor ("Green Color", 2D) = "white" {}
        _GreenNormal ("GreenNormal", 2D) = "bump" {}
        _GreenTilling ("GreenTilling", Float ) = 20
        _BlueColor ("Blue Color", 2D) = "white" {}
        _BlueNormal ("BlueNormal", 2D) = "bump" {}
        _BlueTilling ("BlueTilling", Float ) = 20
        _reflection ("reflection", Cube) = "_Skybox" {}
        _reflectadd ("reflectadd", Range(0, 10)) = 0
        _detailoverlay ("detailoverlay", 2D) = "gray" {}
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
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _BlueColor; uniform float4 _BlueColor_ST;
            uniform sampler2D _RedColor; uniform float4 _RedColor_ST;
            uniform sampler2D _GreenColor; uniform float4 _GreenColor_ST;
            uniform float _blend;
            uniform float _redtilling;
            uniform sampler2D _RedNormal; uniform float4 _RedNormal_ST;
            uniform float _GreenTilling;
            uniform sampler2D _GreenNormal; uniform float4 _GreenNormal_ST;
            uniform float _BlueTilling;
            uniform sampler2D _BlueNormal; uniform float4 _BlueNormal_ST;
            uniform sampler2D _BaseSpecular; uniform float4 _BaseSpecular_ST;
            uniform sampler2D _splatmap; uniform float4 _splatmap_ST;
            uniform samplerCUBE _reflection;
            uniform float _reflectadd;
            uniform sampler2D _detailoverlay; uniform float4 _detailoverlay_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _splatmap_var = tex2D(_splatmap,TRANSFORM_TEX(i.uv0, _splatmap));
                float2 node_1475 = (i.uv0*_redtilling);
                float3 _RedNormal_var = UnpackNormal(tex2D(_RedNormal,TRANSFORM_TEX(node_1475, _RedNormal)));
                float2 node_6445 = (i.uv0*_GreenTilling);
                float3 _GreenNormal_var = UnpackNormal(tex2D(_GreenNormal,TRANSFORM_TEX(node_6445, _GreenNormal)));
                float2 node_3085 = (i.uv0*_BlueTilling);
                float3 _BlueNormal_var = UnpackNormal(tex2D(_BlueNormal,TRANSFORM_TEX(node_3085, _BlueNormal)));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 node_8134_nrm_base = (_splatmap_var.rgb.r*_RedNormal_var.rgb + _splatmap_var.rgb.g*_GreenNormal_var.rgb + _splatmap_var.rgb.b*_BlueNormal_var.rgb) + float3(0,0,1);
                float3 node_8134_nrm_detail = _BumpMap_var.rgb * float3(-1,-1,1);
                float3 node_8134_nrm_combined = node_8134_nrm_base*dot(node_8134_nrm_base, node_8134_nrm_detail)/node_8134_nrm_base.z - node_8134_nrm_detail;
                float3 node_8134 = node_8134_nrm_combined;
                float3 normalLocal = node_8134;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _detailoverlay_var = tex2D(_detailoverlay,TRANSFORM_TEX(i.uv0, _detailoverlay));
                float4 _BaseSpecular_var = tex2D(_BaseSpecular,TRANSFORM_TEX(i.uv0, _BaseSpecular));
                float gloss = (_detailoverlay_var.a*_BaseSpecular_var.a);
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _BaseSpecular_var.rgb;
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular + ((texCUBE(_reflection,viewReflectDirection).rgb*_reflectadd)*_BaseSpecular_var.rgb));
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _RedColor_var = tex2D(_RedColor,TRANSFORM_TEX(node_1475, _RedColor));
                float4 _GreenColor_var = tex2D(_GreenColor,TRANSFORM_TEX(node_6445, _GreenColor));
                float4 _BlueColor_var = tex2D(_BlueColor,TRANSFORM_TEX(node_3085, _BlueColor));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = saturate(( lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend) > 0.5 ? (1.0-(1.0-2.0*(lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend)-0.5))*(1.0-_detailoverlay_var.rgb)) : (2.0*lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend)*_detailoverlay_var.rgb) ));
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _BlueColor; uniform float4 _BlueColor_ST;
            uniform sampler2D _RedColor; uniform float4 _RedColor_ST;
            uniform sampler2D _GreenColor; uniform float4 _GreenColor_ST;
            uniform float _blend;
            uniform float _redtilling;
            uniform sampler2D _RedNormal; uniform float4 _RedNormal_ST;
            uniform float _GreenTilling;
            uniform sampler2D _GreenNormal; uniform float4 _GreenNormal_ST;
            uniform float _BlueTilling;
            uniform sampler2D _BlueNormal; uniform float4 _BlueNormal_ST;
            uniform sampler2D _BaseSpecular; uniform float4 _BaseSpecular_ST;
            uniform sampler2D _splatmap; uniform float4 _splatmap_ST;
            uniform sampler2D _detailoverlay; uniform float4 _detailoverlay_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _splatmap_var = tex2D(_splatmap,TRANSFORM_TEX(i.uv0, _splatmap));
                float2 node_1475 = (i.uv0*_redtilling);
                float3 _RedNormal_var = UnpackNormal(tex2D(_RedNormal,TRANSFORM_TEX(node_1475, _RedNormal)));
                float2 node_6445 = (i.uv0*_GreenTilling);
                float3 _GreenNormal_var = UnpackNormal(tex2D(_GreenNormal,TRANSFORM_TEX(node_6445, _GreenNormal)));
                float2 node_3085 = (i.uv0*_BlueTilling);
                float3 _BlueNormal_var = UnpackNormal(tex2D(_BlueNormal,TRANSFORM_TEX(node_3085, _BlueNormal)));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 node_8134_nrm_base = (_splatmap_var.rgb.r*_RedNormal_var.rgb + _splatmap_var.rgb.g*_GreenNormal_var.rgb + _splatmap_var.rgb.b*_BlueNormal_var.rgb) + float3(0,0,1);
                float3 node_8134_nrm_detail = _BumpMap_var.rgb * float3(-1,-1,1);
                float3 node_8134_nrm_combined = node_8134_nrm_base*dot(node_8134_nrm_base, node_8134_nrm_detail)/node_8134_nrm_base.z - node_8134_nrm_detail;
                float3 node_8134 = node_8134_nrm_combined;
                float3 normalLocal = node_8134;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _detailoverlay_var = tex2D(_detailoverlay,TRANSFORM_TEX(i.uv0, _detailoverlay));
                float4 _BaseSpecular_var = tex2D(_BaseSpecular,TRANSFORM_TEX(i.uv0, _BaseSpecular));
                float gloss = (_detailoverlay_var.a*_BaseSpecular_var.a);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = _BaseSpecular_var.rgb;
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * (UNITY_PI / 4) );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float4 _RedColor_var = tex2D(_RedColor,TRANSFORM_TEX(node_1475, _RedColor));
                float4 _GreenColor_var = tex2D(_GreenColor,TRANSFORM_TEX(node_6445, _GreenColor));
                float4 _BlueColor_var = tex2D(_BlueColor,TRANSFORM_TEX(node_3085, _BlueColor));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = saturate(( lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend) > 0.5 ? (1.0-(1.0-2.0*(lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend)-0.5))*(1.0-_detailoverlay_var.rgb)) : (2.0*lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend)*_detailoverlay_var.rgb) ));
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BlueColor; uniform float4 _BlueColor_ST;
            uniform sampler2D _RedColor; uniform float4 _RedColor_ST;
            uniform sampler2D _GreenColor; uniform float4 _GreenColor_ST;
            uniform float _blend;
            uniform float _redtilling;
            uniform float _GreenTilling;
            uniform float _BlueTilling;
            uniform sampler2D _BaseSpecular; uniform float4 _BaseSpecular_ST;
            uniform sampler2D _splatmap; uniform float4 _splatmap_ST;
            uniform sampler2D _detailoverlay; uniform float4 _detailoverlay_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _detailoverlay_var = tex2D(_detailoverlay,TRANSFORM_TEX(i.uv0, _detailoverlay));
                float4 _splatmap_var = tex2D(_splatmap,TRANSFORM_TEX(i.uv0, _splatmap));
                float2 node_1475 = (i.uv0*_redtilling);
                float4 _RedColor_var = tex2D(_RedColor,TRANSFORM_TEX(node_1475, _RedColor));
                float2 node_6445 = (i.uv0*_GreenTilling);
                float4 _GreenColor_var = tex2D(_GreenColor,TRANSFORM_TEX(node_6445, _GreenColor));
                float2 node_3085 = (i.uv0*_BlueTilling);
                float4 _BlueColor_var = tex2D(_BlueColor,TRANSFORM_TEX(node_3085, _BlueColor));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffColor = saturate(( lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend) > 0.5 ? (1.0-(1.0-2.0*(lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend)-0.5))*(1.0-_detailoverlay_var.rgb)) : (2.0*lerp((_splatmap_var.rgb.r*_RedColor_var.rgb + _splatmap_var.rgb.g*_GreenColor_var.rgb + _splatmap_var.rgb.b*_BlueColor_var.rgb),_MainTex_var.rgb,_blend)*_detailoverlay_var.rgb) ));
                float4 _BaseSpecular_var = tex2D(_BaseSpecular,TRANSFORM_TEX(i.uv0, _BaseSpecular));
                float3 specColor = _BaseSpecular_var.rgb;
                float specularMonochrome = max(max(specColor.r, specColor.g),specColor.b);
                diffColor *= (1.0-specularMonochrome);
                float roughness = 1.0 - (_detailoverlay_var.a*_BaseSpecular_var.a);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
