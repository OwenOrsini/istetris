GDPC                                                                                @   res://.import/block.png-b7fed0a755ada244f74f9622a987e81f.stex   �.      R       �Xm|��$�����@   res://.import/block2.png-5394e2aa6c279cf2eb0c80e5b31fe84c.stex  �1      R       $�U�r��}���9���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�5      �      &�y���ڞu;>��.p   res://HUD.gd.remap  @>             �1����D� i�d�bn0   res://HUD.gdc   p      �      VZǓSvΣ��e�0�=�   res://HUD.tscn         �      pl8�ݜ�c��n8�`�M   res://Main.gd.remap `>             �(@Er�#��K�F�[   res://Main.gdc  �	      \      ;m���]�������w�   res://Main.tscn        �      �4ù���:�4��a��   res://Shape.gd.remap�>              d`�b�^y7{@�tn!   res://Shape.gdc �      '      /� ^���r�)� *g=   res://Shape.tscn       �       ����+~Ս,M,�.�O   res://TileMap.gd.remap  �>      "       ş�*~A��s2�Ɂ�#   res://TileMap.gdc   �       G	      r]�#zҋ�	�틒   res://TileMap.tscn   *      �      "D	��<	-�y�/   res://block.png.import  @/      �      �٩�C�.L� �5��   res://block2.png.import P2      �      �Wt.����ӊ�l�   res://default_env.tres   5      �       um�`�N��<*ỳ�8   res://icon.png  �>      �      G1?��z�c��vN��   res://icon.png.import   �;      �      ��fe��6�B��^ U�   res://project.binary�K      �      <�!љcW-�Ѵ��v�        GDSC   	         2      ����������Ķ   ���������Ӷ�   �����϶�   ��������Ķ��   ������������ڶ��   ��������   �����������������������Ҷ���   ���Ӷ���   ����������ڶ   
   start_game                                                      	      
         $      +      0      3YYB�  YY0�  PQV�  -�  Y0�  PQV�  W�  T�  PQYY0�  PQV�  W�  T�  PQ�  �  PQY`[gd_scene load_steps=2 format=2]

[ext_resource path="res://HUD.gd" type="Script" id=1]

[node name="HUD" type="CanvasLayer"]
script = ExtResource( 1 )

[node name="GameOverLabel" type="Label" parent="."]
visible = false
margin_left = 48.0
margin_top = 146.0
margin_right = 345.0
margin_bottom = 244.0
text = "Game Over"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button" type="Button" parent="."]
margin_left = 80.0
margin_top = 22.0
margin_right = 166.0
margin_bottom = 60.0
rect_scale = Vector2( 2, 2 )
text = "Start"
expand_icon = true
__meta__ = {
"_edit_use_anchors_": false
}

[connection signal="pressed" from="Button" to="." method="_on_start_button_pressed"]
 GDSC   -      Q   �     ���ӄ�   �������������ض�   �������������ض�   �������������ض�   �����϶�   ���   ������¶   ��������Ķ��   ��������Ķ��   ������ƶ   ���������Ӷ�   ������������������Ŷ   ����������Ӷ   ����¶��   ����Ӷ��   �������ض���   �����Ӷ�   �����Ŷ�   ��������������������Ŷ��   ��������   ��������Ķ��   ���ƶ���   ����������ڶ   ��������������������ض��   �����������������Ҷ�   �������������������Ŷ���   ��������������������ض��   ���Ӷ���   ��������ض��   ���Ӷ���   ��������������ض   ��������������ض   ����¶��   ����������������Ҷ��   ��������   ���������¶�   ���ⶶ��   ����ⶶ�   �����������Ӷ���   ���������������������Ҷ�   ���������Ŷ�   �����������������Ŷ�   ����������������Ŷ��   �����¶�   ����¶��                
   start_game        timeout       move_shape_down    
   move_input     
   map_filled     	   game_over         down_collision        handle_down_collision         side_collision        handle_side_collision     333333�?  �������?      ui_down       ui_left       ui_right      ui_up                            	                        &   	   2   
   >      J      S      \      ]      c      j      n      o      u      }      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *   	  +   
  ,     -     .     /     0   ,  1   -  2   7  3   <  4   >  5   ?  6   G  7   N  8   O  9   U  :   _  ;   h  <   i  =   o  >   x  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   3YYB�  YB�  Y;�  �  PR�  QYY0�  PQV�  W�  T�  P�  RR�  Q�  W�  T�  P�  RR�  Q�  W�  T�  P�  RR�  Q�  W�	  T�  P�  RR�  Q�  �  P�  RR�	  Q�  �  P�
  RR�  QYY0�
  PQV�  W�	  T�  PQ�  �  PQ�  Y0�  PQV�  W�  T�  P�  Q�  W�  T�  P�  Q�  W�  T�  �  �  W�  T�  PQ�  �  �  ;�  W�  T�  PW�  T�  Q�  W�	  T�  P�  QYY0�  PQV�  W�  T�  PQ�  W�  T�  PQ�  W�  T�  PQ�  W�	  T�  PLMQ�  �  P�  Q�  Y0�  PQV�  W�  T�  PQ�  ;�  W�  T�  PW�  T�  Q�  &W�	  T�  P�  QV�  .�  W�	  T�  PQ�  �  PQ�  Y0�  PQV�  -�  Y0�  P�  R�  QV�  ;�  W�  T�  PW�  T�  �  Q�  �  &W�	  T�  P�  QV�  �  P�  Q�  .�  �  W�	  T�  P�  Q�  W�  T�  �  �  Y0�  PQV�  &�   T�!  P�  QV�  �  P�  T�"  R�  Q�  Y0�#  PQV�  &�   T�!  P�  QV�  �  P�  T�$  R�
  Q�  &�   T�!  P�  QV�  �  P�  T�%  R�
  Q�  &�   T�!  P�  QV�  �  P�  T�"  R�  Q�  �  Y0�&  PQV�  &�   T�'  P�  QV�  ;�(  W�  T�)  PQ�  ;�  W�  T�*  P�(  Q�  &W�	  T�  P�  QV�  .�  W�  T�  �(  �  W�	  T�  P�  Q�  Y0�+  P�,  QV�  �&  PQY`    [gd_scene load_steps=5 format=2]

[ext_resource path="res://Main.gd" type="Script" id=1]
[ext_resource path="res://TileMap.tscn" type="PackedScene" id=2]
[ext_resource path="res://Shape.tscn" type="PackedScene" id=3]
[ext_resource path="res://HUD.tscn" type="PackedScene" id=4]

[node name="Main" type="Node2D"]
script = ExtResource( 1 )

[node name="Music" type="AudioStreamPlayer2D" parent="."]

[node name="HUD" parent="." instance=ExtResource( 4 )]

[node name="Shape" parent="." instance=ExtResource( 3 )]

[node name="TileMap" parent="." instance=ExtResource( 2 )]
cell_quadrant_size = 16

[node name="FallTimer" type="Timer" parent="."]

[node name="MoveTimer" type="Timer" parent="."]
           GDSC         B   
     ���ӄ�   �����Ŷ�   ���Ӷ���   ����Ķ��   ���������Ӷ�   ����   ����   ����   춶�   ����   嶶�   ⶶ�   �����϶�   ���������Ӷ�   �����Ӷ�   ���Ҷ���   ���Ӷ���   ��������������������Ŷ��   ������Ŷ   ���������Ŷ�   ����ݶ��   �����Ҷ�   ����������������Ŷ��   �������ض���   �����������������Ŷ�   ������Ӷ   ����Ӷ��   ����ζ��   ζ��   ϶��   ����϶��                                                  
                     	      
                     !      $      &      (      )      /      3      5      6      =      A      F      f      k      �      �      �      �      �       �   !   �   "     #   $  $   )  %   J  &   K  '   Q  (   ^  )   g  *   h  +   o  ,   u  -   {  .   �  /   �  0   �  1   �  2   �  3   �  4   �  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @      A     B   3YYY;�  Y;�  Y;�  YY>�  N�  �  R�  �  R�  �  R�  �  R�  �	  R�  �
  R�  �  YOYY0�  PQV�  �%  PQ�  -YY0�  P�  QV�  /�  V�  �  T�  V�  .L�  PR�  QR�  P�  R�  QR�  PR�  QR�  P�  R�  QM�  �  T�  V�  .L�  P�  RQR�  P�  R�  QR�  PR�  QR�  P�  R�  QM�  �  T�  V�  .L�  P�  R�  QR�  PR�  QR�  P�  R�  QR�  P�  RQM�  �  T�  V�  .L�  PR�  QR�  P�  R�  QR�  P�  RQR�  PRQM�  �  T�	  V�  .L�  P�  R�  QR�  PR�  QR�  PRQR�  P�  RQM�  �  T�
  V�  .L�  PRQR�  P�  RQR�  P�  R�  QR�  PR�  QM�  �  T�  V�  .L�  PR�  QR�  P�  R�  QR�  P�  RQR�  PR�  QM�  Y0�  PQV�  ;�  �&  PQ�  T�  PQ�  �  �  P�  T�  Q�  Y0�  P�  QV�  ;�  LM�  )�  �  V�  �  T�  P�  �  Q�  .�  YY0�  P�  QV�  ;�  LM�  )�  �  V�  �  T�  P�  �  Q�  .�  YY0�  PQV�  ;�  LM�  )�  �  V�  �  T�  P�  P�  QQ�  .�  �  Y0�  P�  QV�  ;�  Z�  �  ;�  �  T�  �  P�  Q�  T�  P�  Q�  ;�  �  T�  P�  Q�  T�  �  P�  Q�  .�  P�  R�  QY`         [gd_scene load_steps=2 format=2]

[ext_resource path="res://Shape.gd" type="Script" id=1]

[node name="Shape" type="Node2D"]
script = ExtResource( 1 )
         GDSC      	   U   �     ������ƶ   ���������Ҷ�   ������������Ŷ��   ���������Ŷ�   ���������Ŷ�   �����϶�   ������������������Ŷ   �����������������Ҷ�   �����Ŷ�   ����ݶ��   ϶��   ����������ڶ   �����Ҷ�   ��������   ����Ķ��   �������ڶ���   ζ��   ����������ն   ��������������ض   �������ڶ���   ������������������������   ����   ���������Ŷ�   ���������������������ض�   ������������   �������������������Ŷ���   ���Ŷ���   ������������   ���������Ŷ�   ��Ŷ   ���¶���                           
   map_filled                                                                                	       
   &      +      ,      2      7      8      ?      E      O      T      W      ^      a      b      c      j      n      t      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1     2   
  3     4     5     6     7     8   &  9   ,  :   2  ;   :  <   L  =   O  >   V  ?   Z  @   [  A   \  B   ]  C   c  D   i  E   t  F   z  G   {  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   3YYB�  YYY;�  Y;�  �  PR�  QY;�  �  P�  R�  QYY0�  PQV�  �  LM�  Y0�  PQV�  �  LM�  Y0�  P�  QV�  )�	  �  V�  &�	  T�
  
�  T�
  V�  �  P�  Q�  .�  �  �  T�  P�	  Q�  .�  �  YY0�  P�  QV�  �  PQ�  )�	  �  V�  �  P�	  T�  R�	  T�
  R�  Q�  )�	  �  V�  �  P�	  T�  R�	  T�
  R�  QYY0�  PQV�  �  PQ�  )�	  �  V�  �  P�	  T�  R�	  T�
  R�  Q�  YY0�  P�  QV�  )�	  �  V�  &�	  T�
  �  T�
  V�  .�  �  &�	  T�  	�  T�  �	  T�  �  T�  V�  .�  �  &�  P�	  T�  R�	  T�
  Q�  V�  .�  YYY0�  P�  QV�  ;�  LM�  )�	  �  V�  &�	  T�
  �  V�  �  T�  P�	  Q�  �  �  YYY0�  P�  QV�  ;�  LM�  )�	  �  V�  &�	  T�
  	�  V�  �  T�  P�  P�	  T�  R�	  T�
  �  QQ�  (V�  �  T�  P�	  Q�  �  �  �  �  YY0�  PQV�  ;�  NO�  ;�  �  T�  �  T�  �  ;�  LMY�  )�	  �  V�  &�  T�  P�	  T�
  QV�  �  L�	  T�
  M�  �  &�  L�	  T�
  M�  V�  �  T�  P�	  T�
  Q�  (V�  �  L�	  T�
  M�  Y�  �  T�  PQ�  )�  �  V�  �  P�  Q�  �  P�  Q�  �  PQY`         [gd_scene load_steps=5 format=2]

[ext_resource path="res://TileMap.gd" type="Script" id=1]
[ext_resource path="res://block.png" type="Texture" id=2]
[ext_resource path="res://block2.png" type="Texture" id=3]

[sub_resource type="TileSet" id=1]
0/name = "block.png 0"
0/texture = ExtResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 32, 32 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0
1/name = "block2.png 1"
1/texture = ExtResource( 3 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 32, 32 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape_one_way = false
1/shape_one_way_margin = 0.0
1/shapes = [  ]
1/z_index = 0

[node name="TileMap" type="TileMap"]
tile_set = SubResource( 1 )
cell_size = Vector2( 32, 32 )
cell_quadrant_size = 32
centered_textures = true
format = 1
script = ExtResource( 1 )
      GDST                  6   WEBPRIFF*   WEBPVP8L   /� 0��?��x �Xs�I���@�|               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/block.png-b7fed0a755ada244f74f9622a987e81f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://block.png"
dest_files=[ "res://.import/block.png-b7fed0a755ada244f74f9622a987e81f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST                  6   WEBPRIFF*   WEBPVP8L   /� 0U#<U�x �Xs�I���@�|               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/block2.png-5394e2aa6c279cf2eb0c80e5b31fe84c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://block2.png"
dest_files=[ "res://.import/block2.png-5394e2aa6c279cf2eb0c80e5b31fe84c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://HUD.gdc"
  [remap]

path="res://Main.gdc"
 [remap]

path="res://Shape.gdc"
[remap]

path="res://TileMap.gdc"
              �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         NewTetrisClone     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width      8     display/window/size/height      �  )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres     