#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYh2��  ���Dp}���~nގ����       @��  "j�� i�@ 4�4 ��4�L�p�ɦ��dd��&�2db�z�CF@4Ѡ  @#@ 	$M	�L�b��Oz��<�zM����#D�T�SM�{MMOjLp ��2�#��@�m��4�I �%��҉{m
BVl�_o&i�a%( vl�6W#]v����xC ���-�`+���̮���bɰ�+��Wn(���4�A�WP� ��2�z(Al�<�㱥
��
�Fۃ�����#���&Z��~�c��c��ťŦ�#�FH'd��ñ��ݓ��M�<��*�`�*K�I��L�q�Ib������L+���#Re+"ʠ[-h�}z�zL�f��9uw��L�||C���6��x���؏��Q&�A"���lq8�0�u�<n��22"l����6��$<���������4��}I�]�*C�|"��P��P��-(%�\O ��)��2t���Xn�ji܏7�"��N��Y,C˅�4�^D�I:.TFw[��PzK��ko��pw��gf�*���
\6d���dbRń/(�l;���x�ўų����k}�2lG�/+�
'9ѕ�@�p���^�r�#��⪁������9�^_��Ҋ�kx���G���Re���逦�"����(`z�		i*]�%m�tĲ��t0f�KUeJ�������Q��c���D�_a$�؏��HIs����)�A��(