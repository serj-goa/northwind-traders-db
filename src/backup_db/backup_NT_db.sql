PGDMP     5    :    	        	    z            northwind_traders    14.5    14.5 (    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            *           1262    18977    northwind_traders    DATABASE     q   CREATE DATABASE northwind_traders WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Ukrainian_Ukraine.1251';
 !   DROP DATABASE northwind_traders;
                postgres    false            �            1259    18978 
   categories    TABLE     �   CREATE TABLE public.categories (
    category_id smallint NOT NULL,
    category_name character varying(15) NOT NULL,
    description text,
    picture bytea
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    18983 	   customers    TABLE     �  CREATE TABLE public.customers (
    customer_id bpchar NOT NULL,
    company_name character varying(40) NOT NULL,
    contact_name character varying(30),
    contact_title character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    18988 	   employees    TABLE     s  CREATE TABLE public.employees (
    employee_id smallint NOT NULL,
    last_name character varying(20) NOT NULL,
    first_name character varying(10) NOT NULL,
    title character varying(30),
    title_of_courtesy character varying(25),
    birth_date date,
    hire_date date,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    18993    order_details    TABLE     �   CREATE TABLE public.order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            �            1259    18996    orders    TABLE     �  CREATE TABLE public.orders (
    order_id smallint NOT NULL,
    customer_id bpchar,
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
    ship_name character varying(40),
    ship_address character varying(60),
    ship_city character varying(15),
    ship_region character varying(15),
    ship_postal_code character varying(10),
    ship_country character varying(15)
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    19001    products    TABLE     c  CREATE TABLE public.products (
    product_id smallint NOT NULL,
    product_name character varying(40) NOT NULL,
    category_id smallint,
    quantity_per_unit character varying(20),
    unit_price real,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued integer NOT NULL,
    fk_suppliers integer
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    19004    shippers    TABLE     �   CREATE TABLE public.shippers (
    shipper_id smallint NOT NULL,
    company_name character varying(40) NOT NULL,
    phone character varying(24)
);
    DROP TABLE public.shippers;
       public         heap    postgres    false            �            1259    19057 	   suppliers    TABLE     T  CREATE TABLE public.suppliers (
    id integer NOT NULL,
    company_name character varying(100),
    contact character varying(100),
    country character varying(50),
    city character varying(50),
    address character varying(100),
    phone character varying(50),
    fax character varying(50),
    homepage character varying(100)
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    19056    suppliers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.suppliers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.suppliers_id_seq;
       public          postgres    false    217            +           0    0    suppliers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;
          public          postgres    false    216            x           2604    19060    suppliers id    DEFAULT     l   ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);
 ;   ALTER TABLE public.suppliers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                      0    18978 
   categories 
   TABLE DATA           V   COPY public.categories (category_id, category_name, description, picture) FROM stdin;
    public          postgres    false    209   f6                 0    18983 	   customers 
   TABLE DATA           �   COPY public.customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax) FROM stdin;
    public          postgres    false    210   l7                 0    18988 	   employees 
   TABLE DATA           �   COPY public.employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) FROM stdin;
    public          postgres    false    211   �N                 0    18993    order_details 
   TABLE DATA           ]   COPY public.order_details (order_id, product_id, unit_price, quantity, discount) FROM stdin;
    public          postgres    false    212   �U                  0    18996    orders 
   TABLE DATA           �   COPY public.orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address, ship_city, ship_region, ship_postal_code, ship_country) FROM stdin;
    public          postgres    false    213   ~}       !          0    19001    products 
   TABLE DATA           �   COPY public.products (product_id, product_name, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued, fk_suppliers) FROM stdin;
    public          postgres    false    214   ��       "          0    19004    shippers 
   TABLE DATA           C   COPY public.shippers (shipper_id, company_name, phone) FROM stdin;
    public          postgres    false    215   ��       $          0    19057 	   suppliers 
   TABLE DATA           l   COPY public.suppliers (id, company_name, contact, country, city, address, phone, fax, homepage) FROM stdin;
    public          postgres    false    217   ��       ,           0    0    suppliers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.suppliers_id_seq', 29, true);
          public          postgres    false    216            z           2606    19008    categories pk_categories 
   CONSTRAINT     _   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT pk_categories PRIMARY KEY (category_id);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT pk_categories;
       public            postgres    false    209            |           2606    19010    customers pk_customers 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT pk_customers PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customers DROP CONSTRAINT pk_customers;
       public            postgres    false    210            ~           2606    19012    employees pk_employees 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees;
       public            postgres    false    211            �           2606    19014    order_details pk_order_details 
   CONSTRAINT     n   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT pk_order_details PRIMARY KEY (order_id, product_id);
 H   ALTER TABLE ONLY public.order_details DROP CONSTRAINT pk_order_details;
       public            postgres    false    212    212            �           2606    19016    orders pk_orders 
   CONSTRAINT     T   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT pk_orders PRIMARY KEY (order_id);
 :   ALTER TABLE ONLY public.orders DROP CONSTRAINT pk_orders;
       public            postgres    false    213            �           2606    19018    products pk_products 
   CONSTRAINT     Z   ALTER TABLE ONLY public.products
    ADD CONSTRAINT pk_products PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT pk_products;
       public            postgres    false    214            �           2606    19020    shippers pk_shippers 
   CONSTRAINT     Z   ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT pk_shippers PRIMARY KEY (shipper_id);
 >   ALTER TABLE ONLY public.shippers DROP CONSTRAINT pk_shippers;
       public            postgres    false    215            �           2606    19064    suppliers suppliers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT suppliers_pkey;
       public            postgres    false    217            �           2606    19051     employees fk_employees_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_employees FOREIGN KEY (reports_to) REFERENCES public.employees(employee_id);
 J   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_employees_employees;
       public          postgres    false    211    211    3198            �           2606    19041 %   order_details fk_order_details_orders    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT fk_order_details_orders FOREIGN KEY (order_id) REFERENCES public.orders(order_id);
 O   ALTER TABLE ONLY public.order_details DROP CONSTRAINT fk_order_details_orders;
       public          postgres    false    3202    212    213            �           2606    19036 '   order_details fk_order_details_products    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT fk_order_details_products FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 Q   ALTER TABLE ONLY public.order_details DROP CONSTRAINT fk_order_details_products;
       public          postgres    false    214    212    3204            �           2606    19021    orders fk_orders_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_customers;
       public          postgres    false    210    213    3196            �           2606    19026    orders fk_orders_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_employees FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_employees;
       public          postgres    false    211    3198    213            �           2606    19031    orders fk_orders_shippers    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_shippers FOREIGN KEY (ship_via) REFERENCES public.shippers(shipper_id);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_shippers;
       public          postgres    false    3206    213    215            �           2606    19046    products fk_products_categories    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_products_categories FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_products_categories;
       public          postgres    false    209    214    3194            �           2606    19065 #   products products_fk_suppliers_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_fk_suppliers_fkey FOREIGN KEY (fk_suppliers) REFERENCES public.suppliers(id);
 M   ALTER TABLE ONLY public.products DROP CONSTRAINT products_fk_suppliers_fkey;
       public          postgres    false    217    214    3208               �   x�5P;n�0��S� E��;�:0�5#=%B� 崹}i9]D�|?ꉶ�B��]���YZ�C �)`{�X��[���6�������(u�|�r�2��/���N'����lN1W��E+����RUHYb6�S=U��^��h^�d?;Kѝ,�=�}	Ǥ����w{'��������*���\6C��"7|{��*�A�#��h� s\�?�S�f��I;p��/����	�u�l��|���            x��Zˎ#�u]�" �Ф��X&Ud�)�U�h$��&39�`uqeZxe���^2f��7� }A˟�/�$+��6f0�� �2n�8��sod0���X}J�*�wE��tf�dC����J���Hf|*���d��<<H6^�T�Y�6����L�0f�1�04���t'���Z]�\�4��c[v-�)b��i�CE	���v�U����]�����c�����<���Y��2�����5��a�/?�����2���]���l%}��ۿ�m�-��/�UV��#L�'q��a��8�s�c!S<�/�꧓=C��	fs�Կ5�y=��~���ÜiR�+�o$�&i��d'2�����膆��� S>���I�J�<:����g�uW/�s]ϫ��j���~F{��0yƳX,[���{�ڤ@B��g����j��)y��?.�����9�ؠ�䗟��ȔYݷ=�
�=˕���z]7�iq�~3rk�A� k"QЊ��m�[���fX*l&�7�x�� .�+9�����35��&�<��Η�aa��h���D��VY��_~��@\��Se�0��>���0���L����ԚcR�"��Gb)y?��*�"�ER�ke��i)�d��p��n7L�rmԚ�A�͚��(\% �.\X7BE����	�1�%��)!��R�6�>���k��+������@���K,`{�g�}��>&pHs�߿cQ �X�@.�O����po&�rC|�2����LM��+���a5,�ai�k���CL��ɮ�N�H��tk�:Qx�o� ��I�`�D������xތ���Y������k���`�ͪ��e�h�9kvY��$]� c��p'N�6�I�o��B�"����.���������mXꆮX���0o���Fc�9�x)��<���Y��gxb9���YK�i�'�4M�,@M�!�]j4]��}�fL�k��v�ۗ����:�y���4��hZ�"B�-sy,v���0�������B�A���r5��ߠD�+J4}�2�Ƙ�Vw<����}=+$��	c��}���Q�+�}�b�	NR75��'̏�N�Y�Q/3���x8�18[�4�v���i�&r��]����,�?���<<(2��S8E�H�D�S�	և�W�,�G*�aW��ر�r�Ѭ�(�%�n<x�Vpg��4y�oc���N�G��q����_>����~�sgp;à��}ߞ�6k�Q/�"K��Bk��Q(7S���2�>�5G��Sh~�М
�(��u8���}��j�!Ro��;b`N`Ŷ~1v��"-by�k�}�V�X�8��L��
��U�XKk8n�$x���o�̀��������2� ����U��6���e��z�d�;wOo���[��k�:S��N
�B�{%#6M�|(ը��P}��fM4��C �&�TD�{(��L^7-þ\9��`��E�0"�J�"Z%��[iq��.��-��ش|�R���׀� hS�
оg+@��f3�J��;.�a7�X�r.7��Y#h�v(�	�&X�2G����Q�G��9o3�i]g0���:�o����=t ��52��]�LB�Ƞ�g��^��8L.2
�	o|���"d�sv��
�$n���g��%C�c2d˓�"�Ļ͓� [�����������U����M�/���S�EZ�"����P��L�Q_ٳ�1rWF�7��~��k���L"�����o��#��<�~�`χfr] <_[�����\��S9�P���:���r�����UF�4y��?1l�A�\kj�Yy�&�����HPS��ٷ��1$=I���Ȟ�#�C؟Ҧ�z���d]�[���/�X�ô�dwmcS,E�p	O9��
��u�w]��U|u�;N�>�GY0!�2A�&XD���צm��Vv�>t��/K�5� �\�s���Y�B�򛸱S�[D����E�_B%��H��X<��?Š�knh&�lx�:�k���x��ʖ-dO��Ⱥ=��}LT\�2�ޥ�%�W�LI�$�l�Lv� K��\(4,�X���a:���x���"�%A
�R��iW[����p���=��Z���]��Wh�&�vL�JA�n��$Y��,�&��?��/+U5~U5��!�O
�S������w-�d����f�t	85�x6e�����y����0��R��%��_���yp�>��LD�ORkčU�8c�;���Gp�3�l�g���/6��E1?��aܤqɱ�S�D���T������D)S�����$��#��N�8�8gV��_G�îu{� `�9�G�`�'jA��.�;��"��� 7���T-Q�(���x��H� �_yu���C*PuL������h�|�dm�k'1���x.��}ݷX���)dm������gPS��I:�:��n���[I9���(��;�q�r0~�5�C��3�+�8�kU���:ʦ�٦�să(����&@�%�v�2̹�KT�_E��?&��V�XA�[|��t����R�q�Gڲd���Y�����2%��(q�օ�EQ�����Q�_��*����
Eq��Y�?<N�������Թ;�XJ5�;A�P0�ǝQ�������w���l���x�xݍ�EE����?|%���xq��u�u+X��'Tc�A���0���wbM��]��;O ����H	��c%�y��S�����>)�C]��CM�aC�ZP&�k���c�Ȏ�!F`H���T���4) W쬫�D�X�� A�,�
���P�^������'�~�����_XohW�G���O$Z�Z�)���!��T�:�����#%��@���;n������޼U�9���s�/����[��2"	ظ�P�_���Z]R5��Tc�(��N�'{
Ja�8ǡ��w���1�����@n��8S�#�E��T��j�,���
C�[�T����T�UDc�*oG�����3,����5�&�gdB�.������P�C����w�m��L(�������a^I��vka�H�'
��ھ��n ��\��ϊ=��R�Z9��}�`#P��j�D�v���	���r)��C
�R��넴*���4X۴5�������P��e��SG�6��:�K*��;\���G<WBc]:հŦ��J�i$v���F�T~悍
y �=*��.��1�(Ӫ�N]7�߬Tǣ΄�P�A%�*j.�_m=�(zm�]���HP�K0�Bk��T��҅��W�·]�:t,�6�r܀�T ���Ӱ�C��09 ��"9 ���C2|P����B�7�$$Q�,����U��&�����K��fm<\�W[>K���<@>)���n
����M�I������4�u]�.4%Rh�c�5<�����ʛ�Wv�؇�_<!꥔�>J2��򷛼e��G)z�&+rt�ҩ��-��u��\o���o�:����p<���A��+��2+��6�rD�3�(��x�E_���S3[1����d�Y�[=ޡ� 6��f��t>c#j�������.�/I����n:en���B��J�7ݕٓ������	*-��j�V'��*�)ރ<R�/'l�h�����oI^�����������ٞ��ʀI����;�ZQ����1G+�X�}�� �8���o�o.��$@�U�����4�H,D`*b}�=��U����>�y��"�s���I��8U��|�Q����&��	&�RHQ���\����T�2�8��9�6�0�A?B8�lO;D�后/~.I��S�Bjbñ?�i�UN�(�W>Di�Z�'�A�i5��8oǮ[�t��C1.ɿ�&�RA$��/H6�;ԣ��`����|�(C��m8�s�lv�W��:j(���a�k��l"�E	���<�T��_�qQ�2�"��E�ϊE�k�б�J7.Wfm2�zl0-e&x/���1�7	�e5RM <"���	���P���_p�l�U���\7/d2�" G  ���C�����>J����ݫ.E� �Y<
m~
I)��nT����u�5�� -�6*#:��=�Sp �m�ʨ܁�8�h���� i]�/��!��������P�^wQ=�N�s�C@��K��Z}�>�$�X�6yJ�f%=�v�����V�g���tSs+��R���zg�Z]6U-�Vu�!��E����[�B��A�@��>���~Ef� �80f>o��<�d�� �䏲�|a�Fq�4�]�k��t��('A��/�EA������:�:i�W=�W���ZmڹG�>��u�QDH	"��]��R�UR[��&&���V�$zفZ�eT��mp�����k��
���REF��K�vA�= 7S��v#������R,��ܸ�lQ����W�bZ�%��=��7�J�*6��>p�M����=�̑���s!��H���Cy8lh��:�Gx@U�"��a�;V� ��A�����;���Q��F\PG�?�^(���B�w�5�z9�Z��t�6F�{*dT��v"��XdꝈ"�D��LUj�#3oŖ�~k��\(@}^�FRϒ�ѳ�F�T������r1�c'��Y�(�/��$V�"H�I��~��BlV|�D�� n�f�ﵙ��?a����W�6��cgF�U��Lbee*c]����ʕ�[�k(hW��X�*�W�6��nskԼ:�v��)�M�ì77Kq��E�����=��խHI���Q.s�����/�W�\|Ӗ1���:/�$Aʡk��6\:����+��W��F�N��^��)��֬]P�@��X�	⼑ nö�K��1�d6��0V�)����w������zE�-7�2\�k�Oc�l?�Q��~gO�1�촻�Y�Y��סcvm�0����ŗ?��`�.T���^�$�B�˩�s+��!6g �A���w˪ɡ��k�D�n��xʀ~���6�v�=6��!�
O��� <�Q�9�uX������	 �?��S����`�o+X�)i3��j�V*��۞|Ɣ����^�m#��c�����}�ޖc�9�Q���4�r��g.CO���|<� �'�����x��r��O'd��4���A�P�������Uu�32������u���׶�ۘ}:��-�b��!�KE<��tT �(�߾is�����E���;r�4hw���R�����w���z�bSp�0���%�?f������}�� .o�R:G���ya�����e���$��wWF�G��X�|�鑡y[<R�?���t��H=?u^}"�3ۭݵj���]�=
@;�)�f�*��B�}�
f;�΢dKQD�3�tS(>�(��I�sc(J�L��A�&�0Y�5�w���Q�A������B��z&�7�
��h��/%�;�}֙]��fm��9�ks�:s"�^��2I��"��X����"4�oя����ѻ`�/b*ܩEۺ^9�w�\�&~��kO��ݧW��!�'�g�/6P4��*�����P!�{��#R��YX�.U ܽ� �%i|0��ڴ���`:�'z� ڤ+���@���%��d[���2t*�y�M�����)}���]+���^G�퀑_/kO���Ǟ���I��]UL'1�<F�GW�:��(-�+�U2�5]�i�ݦs�I7�>u{P�Ob�V�^Q=+P]ݹ�����hL��uT������Νd*A����%��b	��x;ĺ{�a��N�v���	�i��6:�������̶E����B�ga�U�̀~�x\���=o��4|�'`{r���AW���Kv�[�t>p�q(�����"j�;T*i�,��B��x.�ځ�������e:�Qw5��ʨ��F�V�?N#�         �  x��W�r�:]#_��Se)"Ej�<��J�,���&!P��}�����*�e.�t/v%�M��.t�c+QK����J'�^=K�tC�̳� I�>��;����|�ӑ���Y����Q/�~��[I�}-�Â�gI���;KG��<���|�OY�M�����.��͕.�D�_,�ߺ]Q��lv|mM�/�ي�����F��)����|:r��$�3�0Ͷ�^��_-��f�=>b��_����pw���F6O�Ң{#�o����W�_:(�!KY���_�>��x�O�d�S�NJ���x��퇔��ֵ�l�K+_�T!�-�U%�=�mve	����d���36���Un�5;v/p#1���L�Y��Y1��r+	�J^��+¤��P�2"�q�K\��^�;ux]��Sz�7B� t@u���� �E���5�뿬�EN���(��g+E��gi��S�5J�R:��z���.�.���o����M�
��8Ĺ߄n��q�4��E�D¶'�ʏ�a�RXT��cTӡ�FTY4�2��w�եO5j
���e%��.#�X���[Q��*��j��fkl��9f�!{�~Zg렬 �1��`�C7��O6��I\�Q���l<MS�4�;~Q?�C���?k��6��(m�%P�8σ�©�
T]�x)7VJB��d����u/��8�Wˍ�g�K���kx�ز��zB���7V4���R��.�1NT`�XI�R�6��Gt��(�y��]A�:�O�UI��S��ح�c����{��O�y㐱c�%Ɉ�au'�Ơ�;��}����fk��<�N;��)Z�s�Zoj�*^+(O���>_ual��!O��c	�d�ρDv4�y�[@Kbo ���u��dҳL����p��7�*�zM���� ��;�|k��Wִ��7�ы�H�6h��E[TP�f+�4;���!�	oX"���ɔ%�,,�����kk%g�>�v�~��ΦI�=�e3��q�=���9�[���Zcȸ�<EW(�'�!�+9���R��	���d�d�w�e'���c��RpM8T�~(�Xc��m�EZGRb�L�ڎK�/���^�}#b1��1������x�'C�pk_�E!�C �{Y�}�
�樓�M��z�j
Қ�U�h�K�oe}��}�����.!hM�ŴNb|Z��`�֮/S>}���t�pHg����حz��W�s��a�>[.ι,�6�*�9����׮t��1���Y ��'��t����y�:lL�� ɽ�	�r�lk������u�3u�y�Tq�A���f����;k����N�G4Z�?^,�c��ߢͶ�+c#^�1d�����h��wt2��#��4$9�Xb���HL`����~��[I�0�l����s���#��|>c�$6�X �b����;��~CӭݺH��`���ڡB�����mB��gL�:�����6B���줰,�Op4K��ǉN�)O��R��[k�2�n��ZZ{�c��{��1����n����0vz�4��v�S>4��R{f�4��(I������,;n�I2��t�e��p�~F?���;�U ̇l==@E���S����.��Cq5�{O��8gW�t/�U��-�8zN�tL�A��)�.1`x�z��z7���X��'��h�O���#��6{#^�Z��h�˟zG��Hޫ����g�o            x�m�[���D��Sa�0�;�q\2S�u"��Y{�BH�\�OJ?�������6��g������5������g���>�[*k�OM?�w�E/a���75��~R�_4��|h�C��׵�wwUQ� ��o�&[sX��E�y��Eԟ�<~�����dm�X��oY�Ơ�C�'��b�Ї��ކ���9E:���h��ۤ�O��z�����T:j9j맾�����ۮ��nа����}0������4��.��Xi���F4��M6�N�5��.���.Oo���xl��.*����n���w���c�ۃ��orH��;���B�4��4�%æ�]��^{�hf��?V8�y�^1z{t��3_B'+G�3��EvI껥%Y=6����J�s��d����Q��������� ���4u}��w���
d�5�}��������(���;P{��#a����r9˓K��9>U���@lv����=z��z�R��[[���}#�\Ch� iR>)�K�U��M��z�4�&��O��iI@HǴW�#����A���r���as�2�d.,�����H�=Bo{����+��K�xO�
�,��H�*�?^�q)�1���"T�\e/�D�*��[5���/���+�k(�h��ߦ�KҐ/���'@��"�9�F$=�\�tS��N���_Z�iO���ݰ�=j���nS�g��&������������j������L�[o��	�3 m1|(Q���2M@��DsM�Flh�DuIQ'��u�D ��U9��'#ae Q�$9IB�w7�0�շ=�_��x�^-�g����?BQo�]�:�^�.�k��Y�}7ZZkN�m����w�;[��Vy��Dr���(kث#)�)���@�^r	�Vc���qP�����ԁ�������q!�XhA�����]�Y� l�#��]�.3"g����[֏�C�.t+/�&��*N��{%�~���%7���)��]�- >�UD����&�O�_$���HC�����F�+���t�"C����h?;1\g"#|� T8j��M�	˷�)��R��2x��F�Q
�;��A4��M��= UD''�*I�#�Q��ۤF�_�a\z��%K&�v�c�)��\GX#0,U�����Z UD'�.Yk|l�G3����S��K�yI����l��6Sc��k]Y˴5ȟ���s�����ݘ-���)#���j�iN��ͻ⎪�1d�� ]���0�`Es�>�1ϳ�Y�/�|��~*�k��`�ʇ~��h�s�5&W����F�b�6.lgF0�����x~�W�5�M�=8}oa-�|u�����4~ӶԳ�y���|A����Ƿ%hK�Z6��Xy�k=�ˀ�$�"��K�rïްr�7���d{:�̣��B(c�M'l,�W��\�)/��>uH�&Gԭa�U?�W�s����L�!đ"dN��Z)���{L��}d�;��w�K�غ�x�2hnޏ��%�����C���т>So><6��ms�ۂ������A1�ϠDB�}�<q�>��-vNj:�bo��������I�q,8@�-��B�����ɸj���q�^w���H^�AO^	�W�B�����#�A��I�zֲ��6����b�?.^���~�ƫ;8�겛��N���׺�����K���҅�WN��)�`"�yv@��f`	�+�/�v,��ⱅ=6���3+��B��O����}����)��~g	7P��US2�Ee��W�RSKn����m潦�8��mȀ�;e*��;�ǏǑp��T� cQ�J߾�Fp���ȁ�q`OL���}���L(N��U>F�R~!@�c����͛�>!߃>����B�l��k�_r������=F{@���h�����E�K��m=5�{8��`�8��H{r.w*w!mMMH��?x��z �]�a��qf�MOF�<���Gݶ��+�޼u��� ��º^~��Vâ��q��:SVc��V�r��xd?س�5�_�%G	ޙ5�Q�qs;��Щ��t�`�x�Y�����W�4G�ԞU[n�h���	]����K� q�������W5���@�;[P��l0Z�"���P�*a)�r��b�7U�����7��kCt��S^�M���r;l�Ѩ�z�?����S��G��gz��¦�� 4��2te[S�d�R��M�
mf2 tP3��C�~^�\m�~	�|�'<bH�k�!��zZ�Lr�"1VXM��k�xj7��E4��5�18p{d\���$�>������y��g����U��������m?㚌�h���"3��� �"�U��eq1����H���(xZ��*p$��\�]rhP�
����[m5F)z9P?�c�_BCy��;��U�6y����v���Ra-;S�)��Q% O8O%��y��Go>�a	�g���t�n�`�a�ض���@���V����MyD�S����9�M@�9�j�ׁFGG�7�U��L�j�8��a8���r�\�����K�xX���8A?߾0�狨zt��H���ȨF�/�W�3rNqڛ�;U��t�� 5W-q�O�_��+f�� �#$�jB\�S�Z�>�OFnu���I��������t���(���?�s���	)V�Ρ]DV���*tn�|7��x���=�* J�0+��qԘ�7���kzL�#�"e�<��4��|<_����d��T߽E��]gp .��� 7��)],>V:�c�Gπp��6��~m~�m�>�WC��4����h���}`W�[~�_�+p�L;c��Y
=��g���f����y��J�	��:{��W�h3[Q����Ztl�uor�����,JC�7BV;[�^�>�{O�r(p[�!, =�=�3E>�)�L�19r�}C��\�ʿ�P_�	�O����������mS�<��i6�!k��<���2�+�)��JBw�@���a�*a�rJ�����h@�^u�-�nD*��a���u��[}�BWc���7�\D��q��w6�-r9��L�lU��Y]g����Y�ﭬL�:�x�̩���h�?���areW��7�Y���ᙡ��W)��%
78:+���	|��1D�i��N�6NO[O��/yH�O�Ӽ��4�'�b �����ܻp�Z)�=N��#�A0W�$�bA)v�!=럣�jR?N�#w̥��@l��-b����7»��{��6��g3���E������:[��_ܞ��v&A��(��wv��}���=��_��jĂ�YG)#}�f�g�Xs�͍n�v��r�}��w�����s�v��J��Y�Z�63H�zWH�{l���g$�а���t����;څ�m��[1���@�>��wL�vA���v�뛹���axC��q�#e���޳օƞ���W��V0��z�%D�qt�lio(sG^H��1%�G��q�����p�-=7\���j�fԔVvf=2�����Y��Ě�!V���m�ZP�a�{�7����c��;FRU>���Bo����3͹��}6+)���Έ�G�0�RI-?����pU�琰G����8�E}/u��"��K�GD��[�l��;�A�(��ܸͲ�m⣟D*EtR�|]��MՂ:!�w��F��xڡ�T,��ʏ��ϥ)m���Ш~�A^�M���ǎ��Sg�E��/����E��<5p~�����em@8u�ټݲś'��h��P˖�����	���/A 8��xm����0GdKQ�B��}_~!���k�>E���a����v?Lh�uV��ut�OE;ʘ-�8��'g͖��Ѓ��cw�p���ֹ7��u4n��7H�Q��X�e<�'֑ީb֭' �T'��@Ӫ��<Lh�ܷ�MN�]�Z�8��rϨ��K�!cz��{It����n�1�~����|\�j���uk���B�U��0���"b��F)�����6�Fl`+v��f[gh��K�����ͱ��|5�r^
c�x�D��U�p��Bz�ȻK�	m����:���Z�ܽ	�ψ�iW䨴LM6db�N	3N���عv�����4    �A��p�������q>o:v.cخ[s�Y��M��*��-�Ϳؙ�u#��ѯ�$hN�,���M����i�_$�?��2݈�BG)a_k�%��(M�Q�s�`۠{{�dOh+7����t�7��9,Xh��v/i���̳^%A<��[�k&��1��������|I��v�P�ѳ9��(Bi��HQ%X�^eb�]w�,��_��&�ղ�$�������6+�{4rX���=j�'k��ɉ�|�4:)��@{R�X�d�?���*"�V$���cȈ��.���B���ϼ؟��5:^��@�`��v�]�cP?q�f�� 4������GHoƯ�'L�K�|�V�����X�`8)9�����%��"(�`�&�+����u�`$�������=Z�;��G=��7�0Ts|Fsr����/�I7�٥[x:��#|n˖��V:ff��(Y��2ZY����޵@y~;�g�3��;���"�w�U���"X-�KP���u�o���ްx ����Xz�M	�qY�d�:�p��5�f^>�(4�3�������ϣ��"�BY%��{�h�����Ch�ԉ:%x�<���K���A�B@�_Ɛal�;�m\���s8����ѵc8�4WvP�?�ȭɍP��K-�5<MHO樭�؊��J K��'%+����w�Ҋ�5�����2~d<��k�����r�U�L�$(:��9ME+@Un�U��n�|6��a�X3��&�^yl�J�������P���ʘ4<ljL9O�|g}�!��5���XL4�� �1't*z�Q>s�*�[JC���cǦ��`�q�e�t(��6=u�L��װov����s<�����n����vd�Ñ���(��͐uV�޵�@;����J�|^T���-��j��'@9��l;KD�_C�JQ���r7�j?��U��r�?yh ��]W����/���';.,�B}�T���)�v�0�Aߢ쫺�?��^��Q|x��R���nx4R����\�H*���W����ftGV���-,����˰ .�=��W�G:���I˖T>�T�yd������W!B�:7�W`y.���rW�7y�P#&DG����x��4�������:�A��R�(��w���|�io�h��H�xP��%W��uT��r >HBl����tJr�j�R��~3��hȰ���H�Rm�Qe 
�&��6kLZC���=�&�k-�#j�޺��Nu&�����1z�1e��I(ZsQ�)����-�'��W��Gfٗ?��V:5�Θ��i���Jo�#n��_P���������m���‮T�!�-Upj.$l}b���gK[	�ھ�ON��=++��^�xٹ�����о�:�����{��>�m�?�k�@�b� BG��O�e���ʏ����h�w��QoC���#8'�=F�7�Mƹx���2��\g_�{R����s���b�s/q�3�5���3A�Ɔ�ٙ\y���ۋ�HeU�Y�^`�3xGGCV'�B��3��W�\�>;��nsحRN����;Gs��D ���h$ ���	!'6��a��N_�`7�S0��-{[�óv"�DW1�0�+���O�3<]Em��
�*;�&(��{�啞�&p���<�島�ʌ��=��y�_#�w+�+�Ku8>M�l���{X'U�\z����τ7,�����{�HZ�������C��<�v<�:R�#YFHM�S��T��o�X����b�*��n��k��`��*Tu:�	^�4o�<�SK�F�๘>*SgB�y���:��0�����
�]( ��"���=
|��.�+�*9g����9�1T�:g/�E������*������H�>0y�]Ǵ�:���򙆡r��o4x��>V�#e����h"����+���R��F~j�^��\�>��a���]7`zs�=<�3�+�����tO����˟]y(A9�8��Ү�8cJ,�E�wܮ+#�	��v���t�c�6�$r�#D��e ��zd��<' �Q0J�
��kXq���1m�z1���^���f�d���I:1+��>��F��2ռ����3J�	�����c���p���?�T���2�r3��/���i�ڕ+�X���7���>�� �Yv�2d�( �qt_���Q���OFŔ���]�B�oB]V$xv=Y��l99'hvdģ2gH]�X�٢�sp�Ue������i��ʃXW�����n�{���%KAJ�[��3��'�tk{���[1*(kw������|����v�ԩ�i�j�a9��D��	(�V;�#�X�+*ꡲ�Ax?�r,�O�s����Q��
Y6��+�1��ZG\�W;�3�`Ox��Ɣ��Iݗ��.BSr[�=����J�v�v/_G�a�[=�䴤8k����~4�~�_�+���F��e�ū�_ã��>�>��=�.�o���E�������;�����K����8�s�P�U)�>a�"1�<����R�����3hw�qA	eϐ�l=�H��C�iD��Y���a 4v~oQ����c��{'�P��I_	�czn�ԛ'��{z���0���=[9�;:�\����P����W�)'Coo�ԉ�9%ox�&�h^�`E�ɸ\\a�����1ǁԏ�2s�4	K�s�c���ϵu������EOWR�����Wz���8�|��*�<pC[������Ac감�����e�:b��o���I0�	�-��>(�q1~�ղ��QD!BV­�8�+�~������&b
�B�!��3�>�	c�-�pFqv�}�����!0�ط[d�6��8�Щ�
�#ū����MȺ'����P�U����	Z	�柵d��%�a����y*�ai*�U������̞�r��m��}&R6�e�c��Lů�n��r/6�^��H� �x
~�)w��^�%7��5HG����0Ӹ�����Uc1��k�����><��|��C�ρx��v�͜��[����s��H��9s	��L����|�T+$ճ�o�@�{B7t~n���s����o(,�;W�7f����Dh����䯯k#����x��H��o���G�AVD��{��m�ی�CE�3���^f���Ж|Jkj�LE�tyD}�����'������9�Iv�g��?
�ޢӺ��D���YWY��U�y|.M�����V/�^��Wr���z�x[�����c%И#t`�����'܁ J�k���6*I��e���!�6/n�B��2C�G�V�%Wum�2"tZq��g��g5ˈ��J�rR��5��fp�����;7�{���V�!e��Sgs�(5l��.���x�~����R�e$���X#qR�� �gKQ��I�ԣ�`�6({��,��n�&D�5<����w���|R���*{��?��f�W���4�i����m|�\�̷o���2�_�P���BY�~PGͣF�G׭��s]������]vp'_Ξn��&�4���ѩQ�[{��ً_�����뢐��o�Rփ�/�k0α���9�=2m^a�����M�z&�]7���!u֗���al�dWy����*õ�r:v�;�J�/��	:�laɏ�/z�Or���L��~v�|�C3G��/s�*1�i��������V�!��}�|��侞����7�m��I���� ���]щ9�)��d>����o�X૔���Q��f��ʚ�$cQ���:��L��WŀۭA�_��"�f<e���L���h0����3�}��Ӑ��q���w����ŏP���q��롚+}�gpV�G*��^D���H��R=՜����c���k*���)�sxzWRS�Ok��$��>%��Pצ`��a�G��Ȋ��_���)�둑Õ��t��>�&K.*��VpQu���R�`�s�c�oje���	�Ĵi��+>������3�n=3��� "d�]�w*�}ٌ�֝� �� �  ��&>w�Ҭ4@w6���@����m|�V$&/��L_�)��{�?Þ���5ݴ�Sk���l׺�q�x�s�v� �I��([	���cF��t�R��@�R�����B֨&��`�r�FWη:4p� �\t�;�F��ૐ��t��!ec�o^�n1���ȥ�"���W���|\�+�˽d�p�Ҋ�u���ϋ���>
�,G�
?S�����ovd�;vS\��SCZJ���!dTQ��������D��
T+�	���8���1y9\1;ˢ��0��D�G��$����c3`��R��Ŀ"����#�za%��yU��Ю�x3v9� �ފ��T�@�͋r�_*����K�Me\/KH�f���{��x�vF쩢�O�7»t��^un�2W�?l��t����〗vy	�UyU�"Z���XՃ�\Ԗu���b��#�����U@��!�M�)ԅ�,��J� ���Li�J\h������r��[-��@[��J��G+�1OrѢ�8k��b��s�E�ޗ�E.��QR�'��9�?�{��'}R�ڙ�O)�������ߏ��',b���_q>=�Mo�ߺE_{�&G�^�).]ţ�6��oM�����I�:��%M��hH8q�.����Zy�K��\㛒��턴2�~��c0@a5�|r@֨���x=�������]��Qqp�� >��j��#Y��1�^,~2��zڏ:�����'��XC��ȸ�KI�T!e�`��s�����v�m����r������6��k�ל�yuK)D��<��d�~S_���5�!4��CE�U��-9:T���h��R��w~&�U���=QpwM�r���A�~k�c�M��O7�̏ͼ�¶�G����G{��#77�m.����VH&
6����'����K^rk��=\��`��N��0<��h~<dF8:C�Wmp��\k�#�ʨ5�nt��y��n�FA!;����([�#�	`�+ o�`�g�m����4�tQD�[�mt΄,����6�2�*�=�zH�����a�˷��������U};`ӳ�����Hxx�r�	��1�aLmX�Nz�n������]oAJ�ݼ(�I\��=���#h�_!�e�8/�Ϫl"�HH7�b~a��k�,~4�!ݶ9:��H�R��I��6�����ym�\�ύ���]��S�|j�|�p�/�-���>	?�k��1�j|��"Mm ���NRU����7-h����Ƿ�������x&9��$H�{4H��^0������rM5 �9���>޵��Et�<t�����9��ǫ������F��Z�0�w�2��$�	�mv�ɿ�kc�K��Dv�5���<CsQt;���h���w��@6�E7�.�'� ��nG�����Y���^���?�Ή�!���]U���U��r_� �K�5�@��V^|/�ѹ�ɝ����	��8���Z�8��u�ۨ�\_S��_Ӄ��F�t��9������O�A�͏reH=�Wٴ�`� �>�!��Rm7J�!�|]�>~�篔`�����W��s���ᚓ�q���z�t��C{�V`�	tT�mx$m�y��rL�<���LJ�`[Wh�;���]���opT������3Ӏ��d6&|��Jz�� ��ct'�nt}����/	mB�m�B�H|�����F��s���s����#~�x���0:�����f8.�z��0Zz���ʩ3��0/�!�_�x?��b$��!�j�>���#�q�,��*��U{�s��%�c���]3���7���"C���60�#|���Q�b0H�v�\KR�8���F�;��J��%\�%�����}���c�
�\̑�&5T���!�۰gxYW���Z��qZ��ո9}<��F^ԧIa��{{�����!�#�+1���������V��v             x����nɒ.��~� .pkS��w_�%���U�sp7!2J�V*S�?��Z� ���nfqу������T�#̓��yD�yf�Y��Ч���􅻛��g.*�}�����ma
�}V�g�n��*��UaU(9R���E�,�zr7�M��C󹞌�yaB9_5�}SN�;z���������/������zz��� �P�^]ܼ)l�l�Ȣ�UQ�bdEq;��(o>5��o������/�iq�/��b9��������;�|�j]yW�l����5U������=���o���,�yU����|\���i�(�Wuy?+�Ԁ�;/�+��3\����g��Ee��ϼ����u<!h{}r{
�~,�){}�\��ɤ�-������C!��ۼ*Of?6�8�2��zm����]6������s���c�]�\������������������}<[M�����-�q�})�)N�����ƈ}��Vp�����x���U��*9��G��t�	�m�uq����l!����+@K9
V3��l�j��H����Y}Z�d)���
d�����f>���g�볓���h���fh?R
Vr� rZ���?,��e=o��4�KR;�s��?7*$��&�-ޞ�����eWH���`�B��+�6��x�~9��g?����~6��}� a�_���?|0�o
��p��{���Guv~tT$���?IJ�>/FA��>��|v��Q^p��f^�R�w�EG����d�|�z7i�˦�O��2�M=-O��\�����Փ�6��{�כ
@~j�ͯ�fR��������U!�&��N��ߢ����9�������bє�x	��S����
$baBqrzy{�7��Ң�=�ǮF��N��r>����=V^������t�^�tാ���B������nV>��wT����V�����k��5g�T¯ƌ@"���1h�E��6���E�0 ��̣��P��&$��r*pu
J�O?�>?��*A5-�'P]ϛ	���7�?J^7|:�y|G��o��K��3�Z��G�p ���?� �6�^.A�N��4'l�쮙)���O�z<����ɻտ��9����(�#V�xsDЪ��S-{=�������"fA�_���bvR�Z�:�Q�@C��M>�����g<���q��������>4�������9����[n�y�Q���Ҁ�)�ϯ.����J&ZJ��x2�e��Pk�t~O��ߗ�&�]S��S��;0�7K�w���=Y-W%���vt}��)6�-?p�E[+�d�m=_�aq����+p���rU��r���&Tx|/��N��^]]�k#{镽:C�BV~z?�C3�7��
�PA�����_K�Z�����I��/^^_�\3�UU�k�
��(��@�=���W�˦0�����5��sP�ojT��8�Ҭ�]�(��(D�E��R�}u����Ҏ�pz���a��d2�u�`����f�gp[��;nF�MC��^�����U�2+̄7�eï+;~ȡ:&��캰{�H%i����dy~Vy����sy+x3��ǳ����9n�x��S�V��?6���I��U*����ӏg'��^�}���B�9P?.��g7�٧�^������?������d5m~�'��*���uv��
�� ��@�_ ��D�).�^���D����*�mf������tG	�l�D��z����c���<_��>�M�	�J�5��~���g�z�n��\��X0�����C��F^��.W���٣����<�u���po�����ݹ������b�?ɔ!�\ ����l��!��,V���Ųxմv����uL����%f݁6?�~yÖ�v'g�9���7�E	�����>ѯ�>/>���/*K|m��������'�_ӛ����W	�Zc�*Ŗ��Λ�t�5�Lణb&	�/����y5Q]�6�ʀ�bk�U�f��	COB4y	C�%�~���8�s���A���	�Q��5����K��}z8C�aZ��^�O������$�Wpo>��%��L�6�%�h�����H�C��%�]�G���EJ�Ț%��g�A!-��5ς/�� ���z�~Vנ2�����n���}M� ��(gl#�{Ÿ�dԟ`�și�63JU������^��޶��u�����oJ�X�a����u�CEN`gPe�@���@A��gw��,��>�����������P1Z�}q}���	;[����h�
7�@ߛ������âA*2&'����,��~�<�� ��L2�t����OEr�kp��^J����-�� ߪ~�ۋz5]b\�Kya�(������Y�����׈�>���8�;ݛF�7F�8�}D����8n#�4�8�]��zۭ�tc�e7� F+	����?�_c8m��ҿ ����ܩ\k��3r�@ G��p�c�&��^�{-��C.�J� ����U��Vi�P.p�qD�`����b,b�.��ƀ\P�/��9J�@�|N&4��%�|���g���,M�0�ְl;�����h��j���Jp-u6\��O����5��9�S���˗W|_L�/����#P̯V���/��/p�'�.����8,
_�0{ Or�˴�����?��������y�q�Z��.���;EQא[�+،H��U���2�����F���R�����yon���j3z>nʷ�0����Cq�a���L�� p�\-��#�C%�L��6�������1�"��/Я@�^^=��)\r�z�t�+�N����8�i]����_��c���K�s7�g�8�����
�)U������J�٪�<*W���:�����O�r�O����jr_����`�`��f�h��j�>��/o��n�w3t���E�^��Up�����_.�Ușv�긣?:���G�g�X�j�hT*�g�fx�p*�>`>���w+����Q��uFqu]'�#��苣ˣ��"��;��$��I�#����q}��}���=jX��I���a�A�@�����1&�p�1��3�.���V�2��j�7�P #��U�|�����ɛ�/�`��V3�=4���=�W�d�!����3@��{[)oVГ�GB����/�.��1P��%���F��|U~DSV�E�n]��s2���
o\y�$/��e�fi�Sp��
�\��;���]�G3\��.�&���Q%_;:3�bIJt��෉��sz$r�m
.�����m���Zol�@;}�@1)���/^��h���j�2����գd���
��)g?�oQ�7WJ�����(\����bDS��k�j땉��Z2mS� Yt�Ӹ����,Cz��Y�<����誗i�DQ��\�Rv��mO4՝O[�;$�@1�V�p��+�d�λ��!ޜ���7��I"9j��p�7`�ﰴ8�8wy7���b����[(�`)�>���߱�x}uz���2����M��c�w:~��CyJ��E�z�L(\}lP��w-� 	:�i3P7G?��_�5�I���\��s�~6�-���w`�~�s�����c0_g���:�@E�n{���x<���h����l[�>��w�@Aa�Q ��^�d��;�O�|���{4��QN��%��0��yc�S1,���}z���*�!	�@�����H��en.\aJ�[/Vs`L�@�&��l����1,.���p��K�Й���d�8�%'_XgH���!Fz1���G��Gp��h{f�N�)ЃIĚy��f��h�s�QdAa����v�طqJ�{0��ϴ�?}�>�wŀ⑯7_4X]F[��3/�����]-���T;&1�u�F0�`�*�����������E������*6�W�R�(�;�|�P[vC�*E0_ɐB5� ��evT���h�����#�X���i�;3�C2MF���e�G'@;��>�<+R��l����`m� �w͢.�5��������"����    ���7��Jϯ���WZm�]p�Sp�^"}�G�~`مB	 ή��֠2�`��pʮB{�d�7:�?R
3�6��U�2v8�L{��Ѷv�J�p��Eqsvqu�Ek7^YiG�7c�������~���ɲY�p5_��5Ӈ��4����f�Œ'�$I�Y�t�ư�PA�ߑ��k)��R���{�ġҺ����T
���
����(mRR��G�}j�V��źㆊ/�Cd(�,(G�!7�pGgG|�m�Z�b��(^Ԕ?��;XԌRZWs��ߗ�n&ѴL�GJ�6���~ף�ZB�`��0֝_�l��rP,w�j�We��:�8:+,��5X�D'�u0��u��c�����Ÿ)颣ɢ�k����s��0�@ר2[�q$���U���F��ObU�.�TF�~r/���L�����^�Qś���+v�k�'9Y��ȶ��|3���Mf�
���a�1^LPQ�s�kǄL%���2o�W
|�XQ`��5�2wt}��m�
l�)�[��� `>�%��?��M��>�/����k˟g�{��p��'����I�_��+W���e�XI�79��$����9�����&��-L{�R���h
:t�M��ݷy�#��#��\vPh�?��p�����-�=�n��࿃�[���p6�+�Y��K/��I�R_�'o�6��|W�dK�3J�\�L���{VF�8:�b���f�a���%�&kD��H�����J��?�>:yη��Œ9!�Q�>��跽�����\���d��Q��L՝s&�&!�ӣ�>0�u�k%V#-N`K�i�,Of�is���(S�Fv�A}�D��?�Ҿx�I��۫K��=�\*_��=���u;3`��FG��y���
�RbewJ��N\����s�ţ��ګ*��p�.^֓�D1~O52S�u>��S|7�c�̲� -�5��ڸk@��h>����mYW�t���i�#� ����h���矛�?æ7���c�~1�����*��+�+y	W���u1�/S�t�EE����s�<��n2�`��Ε��V7���N�R����|E�.��i���&�rw��N/���NVE��>����U����P��_l0T�E5������\tĖ�����Gw���0�c�菗�'@���(_����:������Tq��B��l��0.�R�s��}����@��_���-��_�_���A����bx��`!�h*�mY���̾̀qFc
N(��d����L��e�
���\��>9��Oc�̃�vRm��ɦ�����XJ,;��8������,�w6���Z�2=�،���w�-�L$x���*U+��%��W��bPr�
я��> ߽j��o��o����F!|37���X����`5ƙ��2�?n��j��&g�(l[��,�TV��u�v��| qI�X-S��Ԍ(���yJ.��� C�m]
|Ww1"�د�ė<\x�3_�U���.Kt�XO=�/_1њP��C����`�����s�-`}^q9��R�+�3�O�5�͜�E���'��_��^��"{��(q̩��>3[.g�=���X�G�*o`�9�Ǔπ��������/J���U{W-����1I1aiq�����DJ���P_�A�k0#��%�7p�)����#G�Y
��"H.������F]9W����߅�_��~0�8G�&B�}��� ���H�A

^̰$4"�B�C�:�`����꘠4�@��Q������	��[)�dm���}�ʼÅ0����ڠ�+䰸�@���Xx�����g�+�=8���fU~O���vFdJ��s�|"+��%�0>�����w�9��)��8*A? E󞆧P�$�J�mj�V�\^=�Gi���>�&sI��:q�`6h%����>�l���g��k >/��r�|���ŧz��P��4e1�.����6�2+��Ȍ� hq܊��,0A�� F�g��+�g/�X��$j�fI*C������`D�/������N-W����b�5!��h�srz��*Sr��ZL�_���s��t�t�w���G�����|	b^ƀ��մ7ޔo����Qq�j�pBG�y,t5��}9��,����6�Q�,f���`�s�|����a���?�M>l�VF���݀��+]�A����S��v0�J� *_�Æ�ȓ�>X�)�ze�IZ$a/F�"n�5mh3{�K�}���efK��uXv��-���p��p��^��A%�\��G�����b�����"����_��MF�cjC9�Z�c�X�ޏcK�Qb�(�)B�k��]#��W�$x#�7��e,źa�V2��W���$0o�ø�}��+��,�-���X�4Og��g�Ď��ϋ\Ir߄�$v3����Qg�97��ְ�
lP�b?~˲�m�o�9o�*u�v�`eB@��ͱ"kXZAe�4)!���Q:z�T��r�� �{�wl�ɞ+� cO��9o%Pm�в�!�6\����j}-p����2�7L	��m9�0cv���ZU[�F1��.Z�
xL��qf��=C��S��\(%���*%���1�sp�W+�4ҝ륕)j"��<ghh�|�M�	�\�\�`TO�8g�H����4l��r��|5�`[���f�|)c���P	z���<� J{��F�ʶ�9lѦ_4��h�!��@G+���=
/cT8�I��)�0�[B28��(�ue�凸Fe��m4��juՆ�4GZ�V�Ebӆup�Nk����X�۝hsɹ�;��H����)�,)��*X����D��L�((���g�t��{�8�'.S�Ok���kD��t��T>d����F%D7�hb,�pa��Y�UQc�5�h������^c�ď��c�\��=5f�)U���Ǡ}�)Q��� �[�`m|;D^�Qx��쀩x{YʆT� �\���eڈ��@2+D�A��"�8g�ԱO.N�!�:���myx�D��hAp�F�FD�+��hAݒ��+��ut9*�5���������ƒ_*�;ĥ �1vW��;�G�ێH����ڸSnc*�c̃
0ԷS�\"�(s�h�Y���M�&��As��w�FK��>T9ت��1�1��FӨ�\�
ޱ�l�B��f�@��-Q����s�<�6��|D�mH
���uca<ʱkj��'�8a�o�>���{I[Ӧ����H��z������#35��5X���	*��L��(���}���C�i�<ʨkY��_��B�b�z��]�gU���2u�]ھ�]�����nY�V�-��?�gE;ю~���0�r��ѯ�ɶ����Zc�.&��R]�q����شT*25�����]�rh��u����x5��+�j�^Q_�Df�o�MB*��q>}�*V����o/cr�����bp�y��Sg�D��sF:�o=*���cF]�4p|�C�oXOY�����p��J�:'_�!�W��_K�@�T�3���O!��Y�W��	Xat��?�.v/��"����_��������/m�<��9�=�����[�uI�$�����s��dw;4������a�<Y���p-ֳjX|W�\�FL�x��|�Z/�)����ݛ j��.P���wm%�|��T�oN�,���cu.������ٹ�ks5��1k���3�[I��}���̭��^��8��۝>�P$N~����:�=��;ጹ� �Y9�猣_RX9�>�L9Ԡ6�`���>�۪`8�,��:��l�um��&+�X����c��ݏ�o?5�j��;�W�0�G���)�O �^��t�RB?a��
.(n�O�E)_��}�`c3|#b��b��Wy�@�NB�_"p�����4�O`F�ęDg�}C��@����u�y��I���F�.SU�C�)T�&1�4����pcn����F��Op
��&�[z1�cX���ܧS,�&A�8#�SuY%�DkX��I��G�j�i4��/3�L���щ�ŜA    ��S%�ÞBGSe���P���Md$Shx�"#��Y#`�.���gz|�U��GY��0�a�3=ܓ�:vJhz{(�X��9Ap�Z���B>a��`M�;�%ҁ����D�w\t� ����y���l]�n=,�h�؈'>�F�\���N<��;�7��z��Isd?*��~j�q�m���v
ne��<�ʀp�%/���u����,F$3S�f�+Ao9�
��I�7*�lӯ1�w��|����������:�>UY�%P��Oh�P�?۸-�gIv�n>�O��n޺R\�%F>pE��Y��׃��ӴJ�Q!�8o�^��8)3=Co�;������:��_���9G5T��7X,yt�=I���5���޵�9����I3�����.ﭨ1�~h?5�]�o6Ճk�ѿ��AvFI�tS;�~���ᢲ?<�adW�&��ْZc�g�J1���MI�I���='�5�k>��n��~�LMe�8o��V�;8[�C�G6S�(AקG}�ca�U�p����9���o�M|1�ݷ^B!����?��$�+8�&�qa;p�&�` ɺ�3�̬؄$S��b��E�Xϛ_�/`������óc,#0�L�竿6���i!!<O���c������H�
��P����C4>@�~7(�R�ow|��_e�(|RG����贴����M���S��R�4!�	\JjK�Ρ|U7�0�.c�����oVj�l�pŗ�� �O�4N=ͱp׶�m��ڑ�;�_�&4�Acg�%��m"��Gd�����/]C��-��,�<KW������XW�h��������u!��4m�#�:�%6'�\���M�!��ղ#Gi��ϼc�FK�LMjo,�ǔ����=��فz~����پU�Q���-�����GAdy|�`����l���d�@%�X�%���X� �Ư��tt)46u�I0�^���9:���.$Ƴ,�n_b��MF��!�d�g1�D�$����1�4���g�6�jj�({���Q��݆{>�D�;�h�lS.2і����_I��R.�t�`G�KD,�����.F��U����e�M}Y���l�9S��#�R]�K<8̉C�h>Ď��K�E�QCq1�K#�m0f$[�.Xԏ9�:�7�H3s|wiF^,���Ę�-)�>��t��=�|mI� ��Ə\��O`����f����=�������0�1�M�"YU��,5)�69b�;V�%ա3/�b��Bۘ�R���Y��mq�����'ۥ �衙NRΚ�]xHθSdǇ+�q>T�+�ڨ��N�
L�����ȎT�t��)`Š�
����jc��G��{���\o9Wmd��-Im�2g�N7Nl!L�@���14P�<��0�df<�qF�Q�E��+D��F��q)�m7Mo�߈�r���^qݶ�(!���b1�x�����K�D��Մ{��C}^��J����I| ^I5�Z�8�����~��	����r<B��D.0�8�aǗ����l�,^5�3�ٕf���1�ו��ζ�5����]%kF�Ʀ�L�5�%����~c�԰�E����b=�쵈��k���CU��秷77L}��=�;�c+���А[����PL�ߠ�
�f�5�ݐ�/�f�	,8_7��j�d0���j){�Vtf�^��j��#��<g�lG���������*C��d��G��c�IZ���r�&�iA�W9}oڡt���g�*�����o[�;$����v��%A8""��k��q�'���.����e&��h%�����Xf� f:S�괳Ho��	�C3���vp=���J��2Al��p}p9zBG���� 7�O�=y��	K�Q�zg�F�5cN�gо�ޅ��Yp��أݸ.�c���zd���w�3����R�p��3����Q=J�q6�E�mp9lp���GA]�Ԋ�����y�Q��uƶ<g��tA&�6Ӊ�m�ģ�E��٪jG�������+�C*��^[��.���+##���jL{] %E�pI5������ �Q�E��1�/l��U7�B<	]����ze���"��<��!w����^��s"L����
d+מ���!�� 8h,?�.�ȖݳP��hCȐm�`���x���y�jĩ�X�|U~DW��%�k���N��Y!/����.�_-4����v|��r��Tn)�*o۱`&⫃v,]�0Gp���VH��OJ�<G&8`�����B$T��u�+6�T�����c,r@��~�ǁ�ccoJlAo�=;���E��I:.g
_���?���._ד�x�,>�Ĉ�X�j&���M���qVl�BF�"��Z#%^u�Z5��X�|T����ς�7�#b���������H��g�,�C�5U�Wy�0VVm��䧺� f'4I�+�j��������lE�2��p�ӹ��9�> �c�������?�1M�2x|�ꂃùK�g�:=I�=��G`�po�;�P��S�1���ɗ�MS������� zr��0�e�G��\�}f�xP� ����]�37F�>������R>`�6�㰽�K���ru7F�=u/�M�>XnAM���x�2e|����g��X�6�����8��"�`c
�3r�^�5�<���qԶ���~�7��aUY�bZ���f�!�p%��`he�Ub�d.�`�P��f��l����د���^@����\��m�΍x[����g/���D�[����噠dA"�9��3�$dB�tA��j��q��D1hl/�g����c���ᎌsr,|\i��%�> �=��u��5�Ȫ��/��k|�V����~A�w��;(k����G�dh�Zl�,�C/���vǾ~;��e[����:A��!aY��_�>cA��!S�U��G���;������ ���x�t�=��$�
���7�D���c��E
H}:���J+$*��wau�o�]�E�x��e�%��f+���K=�-x��X��c@u�ԣ�D*����n�L�D���K:�f$��!	"��39��њ�-^H��5��8rgq�c��kĆ{8�g�	f5�Ԫ���g;�|Z�u�:��g�(�tʠC*��_�������Z�w��S�/ҮL$
L`Z8�3v�G"=[������ѷ�3g��B)��V�_�~
�5)����l���uDS\��]�İ�!�	O?�H5�8��DNO�v	K�,�� ���(��
��X��E��B�?��SV�{�����m�ڇ�)��#G�E��)�7�ә�����(:x����)�/uBb2���;E��i�U��4�T�~K��Q�4;N�7�w�;+I�z�-�'i��1ЮO�:$f�i,2��ߓ5J/ձ������g���GQe�U����ڃX��)'�/)RvE�04�N�5�Y�hDvY)������VLi~���^Ͼ��}"����� �G�>p���@�{�k�I8.֦o=�C�mNo�@���u5
Y3 �gQ�L��ݥ�EQ�|�$u%�2�-&��Pi��R�<��u�����ȱA�MΆ�1 ���}]�~�\����=8׵0��Тd�vI��?V�S��H4C�.�^SY8>C+-8��-g*�W�,�AK�)�'��l��Į�$6k��R�U[���i�� >6�sU����Z=�Az�f�nZh�bK��؞�ڢ���%��n�\\1#>V����D�wq�ǰb;O�ޱ|L���81��{I��;���'��s��M�dH��Bf��8ȞB�[���''�\�� �&�r�X�qQ[�
�?Q� ���F���6�
��
c���݃�N2��nl�P!G9��$�b}I���j�9�a;�Ug9.��d��U����1n�3P�C)b��S�R���RT���[v�Z�ܢH&5?���02����I����$6S����8�������&&+~1ֈ�p��d�H��J�S�S�)r�@V��f`\���D����(b�.� ]�n&�6    YƋ#�Z�ǁ�He�p�*�f���LM���t�i����^r%Ec���t w(��mʋ_��4хH΁��2z51�4TO
���s���"�W��gE��:�O�*u~X��;�/O��C�C��s@���e��[��9��3�]�L"���9|f'b���v�Wi,�C�5R^�c0G�FG#���zV� ,(� ֶLgݤ�>3��>%��XK��Qt�Pf�`
�'��,>���Z8=���Jk��N}����k���+c�2�ʉn��J�c��ƹ�j$d\~���NHv_��pؙk��{*��5��|ƈ�2(l�w*��O���C���Y['|Zɭ}jy)��*��:�@҉nd���yFP���(T����2wY���
r�{8)�9���
0Q�����P'eZ]�e�N�Zp�փ/���w�G�L�e�x�@.��dr�[Gj�rvM8��TТ�����4;�gy�Á���춰��[��z�Ɯ3��^����h�дhh��UX8�[�Y'�i�E,���]��m���~>wR��4��k^������n�Q#,d�"s|����k�+�}�Nk<�ᰂ,����C��ݠթ�h#cֲ�W�Ƥ��J�+܈����}��*0Ӝ�f���[��BNotk�[�����jOnr%��D\=�bP��������{��	�.`"~�Y�zr7�MH�>�L��ЊY9���ݻ�K:l���:#ό8����s,{�Qq`���W���u�_�,i���D	G+�T���L���v�j0�إ�g�X��_���=��4���);��R"�Y��9�p�y���x���� )��LO�:�X�CrS�yd�>)3�^�9"��t|�Q�"r�{,��;챤��41j��mk��2/���UX�1�j�>��8u���Ρ�E��F�Y�1����M(�p0G�!-qyM�~<+��e,r�vR%ֆ�&b��H�I�h��vD�e+�m�����,�s ���8�$��O,
�<�|�k+�o�B{g��i�*�Y�3�mų��@�b`�N<gL��$��2	���yX1�=��o�Ϯ�Vek����A�7��m(��ۖ�����7ś�>��GԟS�c��ϠZM9�U�v={T�+�oH�e��+j�n�	i�����8j����;[��8���zi#fSC�6��qV�S�9��<�B�)�Z8��1ge�S��i����wɐ���m$f���J�%+�Cd)O��ݫ���@c��>��TgM�rӚ5�@�$R�]-qcyG ��5u��2=Ja�M!G�Ó�����ȱ?B�1��Y��n2��mL�k��1���R�b�s�n7����q��ӽK��ɭ�m��{���s��D�{��X!Pك}nוF��<;,�:��\k��(�Ͼ��Ȏ8=	%�pncf�.��1��e��N��	�=nBkT+�X�nխ�@ٲ��ڹ��֙v��K��nm�y��0�u�|L1m�d�x�#��$nq�V�6h���v���i���A;�ΟXݸ��W#�����s��O;��:��q|��'�S��xrr�=�T1����x΋t���w{�4�B����e�p�&��đ1:,�=��JG��y�6|���*52�{�q�}شlWa�qf��%��W7�\����
A����������o���6�M�ER/�ч�}���? 2�ʘm3^I@d��qR!��B9S^8��F�]�\���5��b����?����Q��:�y���O�u�96�X�L| T�!�{���MΓ�	�-3I���Z��1�1����N(�cv۬(<L(uAm���@2񯰹�dv̩��L6CC[�2VB萷�d=�����Xފ-W�i�m�I�>�.�f��iAip��룓��fk��4Dы��A)������xַ�d��ѭ��;�;I7��Ii��NUd�8(��T��vm=W؆�-M��i��ޡ�\+��[���sX�5�[t��Aks��o��	���ef2�d��t��G'x4������rQ�����xl���	¿���O �\T�SNo���j�B�x�WВq������4�c���u���wq|��61��X	���d$荮��о��}ތ�ET�j	)� d�Ͼrm�D���ݒؑ4 mָ��g*���tc�_gxa�����h�hlu �3��d��������7�؃|�j1�/�O�w0[,�^w�ݓ��q�͏���	�q��pϋ�IU�o���� �|8�|3~��O|@��S4�z���g��GV�G���,����������>w/\�e�mЄBP飯�.�`7G�Sd �<l}L���u���Vc2r�'��ݫ\Q��uj��oh�\oyL+Sz34�Y���jx����+�>4�e���J/Uz4�v����+^���F�G/�8���q�� st-�ٴDJ�ے�hF'R^Z��:��G���.~��%8�-�y�mp���$���Ã�<��m�Q�ҵ���K5�d�4y�d�NR`1�h4Vfd�$�����i�"����8�W����d4�[!�V�)���e�g����H��1⩐Q�z�81kϮW�pa��R�*G��+ݞ��L�I��W:o�v���*��6���+�߱X~DTG�Se�ˁ�ǥ=�1Y�)Y���i�>�661���~@����r�_K�����%��2��)�l��
v9S��V���)c��qƺ�e;�M�	�'/�}�p��'9�8GU�P2�u[���48��ۯ�w�1�@��C�g�!Y��.���l\wK��d���bUo�Kκ�}�1�?f�O�\��[2W�J/���x"փ�&����=xHt��W?4��K]��oYϛ_���LQ���U������xH�!�o��ƈmL�E8tl�xeb�|7��fK��

����8�����սE��4NS�D��ɈO
�S�	��]C�gg�����+O�I<8�i3�p���o����c�O�Р
G�F�U`�}egYA��2y3zӹd~���#����G'W�\I�n�LÅ8n P���|
7���($��4��k<]�g��.�xߩѧL�>��)t�a�#1���۪P��A���]��a����q�:�^�i~��X-3���ۮd�o�*N�icAS`hkxɪ�ɋ�kM�×u����fYo5�}���M5���s���{��/��Ki��~����/o�/r�b�"�*d�a�`S���I�{�1�_��1��[�_�H�[��(c�B�۟�B��wʎ�=�0p���]��P��	����/^C�q�B�,�jz��) O����l�4{��[H�Z���׳��i�3u���Cuz��W��F��E2~��L��^�j#ˑrٴV���d;��U�CC|Ȏ��3?
G�da�����]����z�&Y|�g����H����M@U�ѡ�{_�'����4��V�)'/�D�P��������Y��*<��#��W=��h>}""�L�*Ag1��_q�ރKY�Pe����x�݇멍���.����ַ�1G7�O�L]���=:?}��yr��%0��(G䛔�{O��)�����nR�0����|���Ka���̦udF��;��}k��[Dc��{��Ì�m$eG�}Ra�%���)�:>���`�Q�rK��Ё��,a~���T.5������r熶�{p�Ӹ$�k��G�͝Ì���d�|��Ӡ�!Com�����jeɭ�1�<8l{|�A�aX�^��!>���[�&��lE���r�����ӣK&�����10��zuGc��-'
��z7+ϗ���8���/aK�����aݢ7ހ�\�JY=;�.@E@��J�ׁ���F%@X��jžӴa�f���؊��l OF�Hz�E9�,��n��x��bH��˙�j��f�U+��H�FE#a�x~?q�Q�V_�Z
ß�ţ�}����Mm�\1m9�*NV���<<
� �  u��}v���S�+��� �>n��Ru�6�dEs�n���J�A����,�
�/���C�7�c�0Z�OFWX�21b ;���rߞz�AU8
2�����!�Oo��n8|`(_�4����ά����H���������E���z��؇b1��5R>�̬���?:���G�-��JT�Q��/�r�g^��:-""

:�K�����Oc�ps�m�e݄���;:Ea������$	(��Q}�W{�2 �͙�
��Ʊ@b�t_\��̄��(q�\� NX�~̾�b痢qS��LgR�۳NJ�X��r6H�'��Uf��3���4�3���2�Ǒ:���cH���L�ݶ��9����|�����ҵ�����$?�L.���!` �"{�I�%����#{A>�ᩏ�Ѹ5��"�Ve��:_t}�_���qnl�XnP݈��	��.5�C�G��lz�k�L��Gv�����i����7cG�.����!B��5#(�g��MF�o�TQ8
�@�(fP�w�?�K�;��F0U�P�w�>N����)�rm��]�I�֒)�8�+���#Sp�w�X���~�]�>N�Pł0����q]m�d�n5�}�Cj������N���s�Aw=�aZT��B�B`8�o�Ob�����;���`#0D�UyQ��KT�_ʓ���ξ$��D��-�Z��#�D�5�KtIr1���P<���y�A4�T-;l(^�v˯2�y�`�^��w�(uRi@:=��oDb��S?pl��H����}��s���S��O�=\c'�j�&��[���>`��q�����'#7:�vc����r�A�v�t�v�2	PV+�{��6"a�4����||��}_-$�t�6�|c�d�:gH��v2��[@��X���!��Y�Zݷx�6+R�d�.Me�����y[j`�~�3���n~��b����[�r����K|����|���m(�S�o��Z[�����Dk��69�8 ����bG@�h� t�9�����<ԫ�)_�Wp*D�@W� t��D�2�-���Q�=��Żga��B���:.Z�97�(�����`���Ay�n�kN�HH��*�lN
�{^H?��]���ß
��o�.@�$���E�����q,��p�>5�v�ߗ���Џ)a�
�A�Q>,��s?+��u�@�`ag�..�����ER��}D���a��8�@)�"|�ZP���"p��Ua	>��L��nQ[�=Ì��s&N�Or��
)��}H�S���Q�]�*66W# �tu������� �̈��iHLA���!:���8xR�:~b+b��¨#[q݀��f3�#�����ٹ-�V2Z�P:�U��g�k�o���X�6V�UX�������b�8�TaE�;@���5���y37���RY��eي�P�@Iy�岙�Z^n���8��w����Ơ�G�i�����͊YƃS�O�S�S�f6�]EÌT��v�b��c�=��9L�F���,p��ݞ_�-J���4���W�����2.+�5O�}�$�@��V�`��>���Vc2
)֪��������:�?�1���0�6G�ɌFЂl�$�T4��}���F�c�dh=f/2���=)+a٤�:�-�4��Ѐw 
zz}vR�]XLwTH{�-� ���	'��~G*c1�7=Nj��xE@g��Ĥ��^�;�ł��$|�Cb�->�>L�\[�x��k�;�1�b��۔��������Ӡ�Cj}C���lx��`�#�(�i��l�K6=��X�o�����F&��f�声d�@�|�/h�}�L�Ak_^D?�2���"=HL��Q�*�!��/y�i+��Lz>��
�i�<�Q$�a�����tś��3�|�iS%+������@�uy���5�������"�����#�x�Q�#r��$���G$&�ӹ����6|��x�
���f@��UqF;�ɀ�_Kv�M�"��c�J�@m:P�A�"F�����D����Ħ�i�V����޷�t���qp�5��h��N���Yt�����-�m��-	��y�8�~X��8~��}tT,��9���+�k���(�.����?�+�o��=0T�ޚ 8�M;��T��W�s�.L�Ew����e�T��3��I�Q�.���AC4E���O"��4=[Q��B����	K�T��q��A�> ������h#'��iL�� 4�>�i���8g$��?�	8������o��8�1�s� F�MrzU;�/W�`���O���+`a��NlL�H�>
���,�Cӣ�6����i&��RK^�3}05Q]e���M��Sn@P�d�/,��Q�Le�{�/,0�+���(�z�-B�*���3�>���M�W.V���L�����@MRM�)%
���!�m�Jǎ%���^�X�2�@u-yI8�5��Fg��o7Y���A9w��4|}�����^O_|bI`�GN����2o-Zݫ�b�Mһ�r���z1*ߐ��x�&�^H�2�o��Xz�#���7P�l��#��S+5\�h�&*�4�Q7��F2�*B��u������\;�Xa���֩��|KE8����8GD1����Y��K�9K�V|z�k'���v�UM"[ԓl���r��i4�Ǥ�8n����7վ�j� 0���7Ee���x��؜�!������e��9����F������i���Lͨ���$t��� ��� 0ݶ������=����0M[a��2��5.� �Ĳ��ސ�ϳ	���D�@� �c���ĸ����6��}̐�␾f�����a�ˇ���6{��*�y�n>�O0o޺R\����lb��/���k��x�vd}�e}TT�PxfW��N5Έ���}Q�b�OS=�"f��h��f�ƴ�͵ў�ä2��q|2:����#���� �f=��L��@�
/3gr�y�|�T#�z~���@"ټۿ�_�^�P2�-}�%P�l���%�1׳��6&���1Fb�u_ n�x�j7Y�0#,��e�$*W����Z���x�=��V��Sh��F���)��O���G����(��b���+�E� �R�� 
�����_���� D���8�|7�Q!`��������w�A�g���1���W֥M c��ێ�rC���Q���w�>��o���ˈ�`<փ�(��/�����y`�&      !   ^  x�uW�r�]�_�ݬ�����;��N˙T�fQ0�">�v���J�fV��l�����N�(�$%ww�vY.��>�9"aW�nu�����K�����m�Y�b�ϸT��k^�c�B1�d���n#�.�����Hp��G�v}_����3�,�PtW$�yc;c6|��&��J-���
WK�y+|��0���]�]�/����ѝk,<��$%Ǐ��LIb�zm}5�׎��g��>��Q��ؔ��R�޺�vV7�_ZӾ�߻�ߙ���|��Ґ9Ş��{��e��<MO.�+V["�w�V�_�|�j�엡��fW��f����3�ڴ�euh��L�;�S��)%#����)k�5nx�V��%�]k��!�,\�z���[0�
��/�9�um�����G4cc	���#@���eT��m-�vk�o�n��bj�Z.y5�+2&���I�ovj�����O��[��.O�,Ae����߻��(��.(������8fL�09�VS�P����i`����U���nʭ�����z���=_$ s�O9�Z�k׬$ ��Y���`�(N�nB7�'7	�@��AL#)ٕ���z8�>� �b�8�H�
�Dl��2LS%���d�8��;�T�'�d�Q@C�-�� �0��5��=`D��)�ނd1��sv��F�O����2h���%O)�D�&Y�J����9���V�h�S�+�(�U�"�û�_�r����D?#S�Y+�=��YY��eȕ?s�����<dA����uoto��_l]�j�H�+�#��0�kJ�+"`�~�-Zٖ�w�Ƽ �7���ZoU���X�<&�/�ů�V�k9E�~T�4�|Rvd\�9���8�cM�"�|6�>�>�1`-�z� ����~-wf��ÿ7p�K|:��*�L�SDB���i����,�O�+v;����?��g�n�tvњ=�OY�ͫZwŜ~���H�$A�kK侷�3�����s��2^ �xf{ܐ�d[WU���;LG����1L�S�9{O�vx�hZ0��ނF8�#�S- �tDI," �~��n�b���������) �##�顣�� ��6\�&��v��x5`FWԻƷ��Զ��yh���;�RQ���-Y���:��!�vm� [.?�+[d�c5u�n�ػ�V��5��^��w�T��ӣx��C$�&�"��l��u=0�?�nk�H�"�Q�!�"/S�d��rm嚏h&�7�mq�xŸa��~���I�0ntW�� �aZ[W[Ғdv;���('Sڐ#��ukjx�X~e��M�m�d�� �]L���o�$��F�]`|�:1�G'$��,f������x�KhҢ6	Ld�V����r��k�66\ǳ'h�b�ޘڼ�u��h�.�)��{��j�����i�"�<+1I9Nٛ��vE[פ�Ɍ�q]*^IaɌ�'��~�V�WE�� ��6����k�du;������$9��@�>��? ���/fړ3��#8D*I���*y�� �}k���'d�b�YYrZ-�-U3��f����f�)6�5��.M�&TB/�q��	�39Q�?�� �[���m	�/j�'M��1�T��
�S��o>��t��5�>8�I�5v���7.�ycbZB��̙��2J${sp[~��/W:w���T�xlYЫH��^��ߕ=��N���K�\]���ʠ+��7��.��@�<�ċ"e����x.�Ze �I"�|���Q�w��Fa��8�|�y�Q�1	{�(&Se��L5�o�,6e�lk�YN*{Z߉t�^F��u�s���n�՚ָr[��M��S5�!�o�n�k�������!�l�:�Mp"?1�j�~8�������>i��d)9���&�|i���R���>�/ ���qX�;`a��l�������J,����i���X<S���_R:KjD�Q�H)v��O����K�������eH[A����a���q%l�����w�i:�j��_��J������ó2���U<ό��r��O��γ�\՘ �im����'�H���^V���,8���0k�1o��[��5�e�o�5w�uCC�cBL{��˩;��wTURm�GG�#���"�V����n�6B�A�B�\��?-�(�4�4�      "   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      $   �  x��W�r��>����R�U$�_ȍ�d�)iE�]��e��1�ff@���*o����K.�y�<��F��-j�:��l$0��}�}݌�كv����k+k�N�4�9A'Z����uk��R�i���~�`�j���ID��GiIc��
�h��*ʣהeY?�Ǝbv)���4�+K'�s��T4r�p���iĖF�Y�����a��JZg��9���0��M�H0�
h�(/�$E�0܅N�d��������(ac�U��t�x�cK�z%��f7b.�ik֋m�f��n��+��NnD��P)�[d�Q��h��Gy���Ý65��(>��]Y�d�I���(e�r���Ӳ?k��t��ܢ�)���|�����zT����\q��-��J��/{"R�E>�=c;}�jA?��jK��Y�5��&�������L�|���=:{Xkp���ٚKŮ6RԚ%I���u����p�?�v�-o�� (���Hk��|ۮ��_��B�����+˗�eib@�l��t�hu٢��kJ���y��¹��޼���V�2��;Tz��W����7���h��ھYui�:��5�4z��'t��U7��=����HΦ��խQ�%aV�裬���9y�^4� [�5dw��iڏ�4y�dE��
 -*�iH[���}N��A"�dc�z�[/������F)��P�.�>���B,��N� 3%�х����]-ŭ��j�؄K]؃��9±ٽ��bc���Ɯ��I�� }q��k4��Q�BT92puxWF�(
!�;TQ�G�+ad�-M>�ىw&K��?~���Ᏺa3�隷�F��1�rP͟��AQ��}W:��4D��9�f_~��?��_��E���9�v���o8�W�ƛ���)��Yq�e#a�-k^�U?Ha��8�|�����6U�E�E]��]7�{�q�gW.�̍�o�<!f	[�A�A�4D�S�D�r���X�&���[���5��4){�K0�u�T"�����Y�{���%�)�^��W��ߢat����/��;G���6@v�ME��L��\�6B�վ�����aWR,���BM����QsT��1(-�(9�In�p���ҟ�$��M��8�i�:z�x�e7>���^�x�N9���=���4�8y��-{{u3���	e �4�
��Vp��Q6B��kk<�� �F���$F�s�� �k��q�̒p�H6��;�����Q�Xf۠�m�Ѷ~�u�2�*�*�k��6�fe���M��4�O�[@IB��0ؐ��^e�~��e�M�w��%�>{3��܃{��J���0�0/���JfNW˅nV0�(N�;������o�|�1b���{x�O��?�g��OTU���K�p�[|��oJХ��o%�R	L #�dd��q� ���4K��?��υ�C��eaI�����}���ns9S�$blq�ScL*R؍��E;�%K�}B��������d;r�Ťfa%~�~]������ms*֘1`'�\�n�4j6~1D�~����mR`1�C6K�-&8��
K �����X	��U�E0�4�PЙc��kGo�+HØ�0&��#6٪���ʦf�q���8jM�_`q����6�f0��r��@K�I��QX�/��#�?q���\���K�Kv*͒&m��
�C�Lw�A3�1۽_�+�~�	�f��F~V�bN��
}�f�1\�g7!2H�jXb���Rй�˥V�\pW��{j@�|P���Z<V�$��r���|(�2xLS6>���[��d��%f�z���=�.�m���ȼ�}�Q�������$��O~a���O�<˦����U���~�K�<���d��WȽ�$q�)��%��ʥ	o���[����d��Vί,����G�):�rh�'����� ��1�f��^eQ���p�[e �[��{�����)܏e[�J~���n^x��ҬH����D�k�4 ���(0xY�ٳ�i���V�̵�p�v#x���?�G�t�Ѕx��<g�>|V�>裖�Y��ޡ�N������?���(?y璏/4�>���j�r�	q ;�d���Y�w�"�AY���:Î�~2Ò��"�cϔ�M7�|�74�m#�w5�g}�D�|�+� Y�>�Q>+���E�δV�����sxw:�Kptt�/J��     