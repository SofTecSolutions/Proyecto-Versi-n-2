PGDMP         4            	    {            farmaciaACS    10.22    10.22 6    M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            P           1262    41296    farmaciaACS    DATABASE     �   CREATE DATABASE "farmaciaACS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Mexico.1252' LC_CTYPE = 'Spanish_Mexico.1252';
    DROP DATABASE "farmaciaACS";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            Q           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            R           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    41297    cliente    TABLE     �   CREATE TABLE public.cliente (
    num_tarjeta character varying NOT NULL,
    puntos integer NOT NULL,
    persona character varying NOT NULL
);
    DROP TABLE public.cliente;
       public         postgres    false    3            �            1259    41305 
   componente    TABLE     p   CREATE TABLE public.componente (
    id character varying NOT NULL,
    sustancia character varying NOT NULL
);
    DROP TABLE public.componente;
       public         postgres    false    3            �            1259    41313 	   direccion    TABLE     g  CREATE TABLE public.direccion (
    id character varying NOT NULL,
    calle character varying NOT NULL,
    num_externo character varying NOT NULL,
    num_interno character varying NOT NULL,
    colonia character varying NOT NULL,
    ciudad character varying NOT NULL,
    estado character varying NOT NULL,
    codigo_postal character varying NOT NULL
);
    DROP TABLE public.direccion;
       public         postgres    false    3            �            1259    41321    farmacia    TABLE       CREATE TABLE public.farmacia (
    id character varying NOT NULL,
    nombre character varying NOT NULL,
    rfc character varying NOT NULL,
    numero_telefono character varying NOT NULL,
    direccion character varying NOT NULL,
    password character varying NOT NULL
);
    DROP TABLE public.farmacia;
       public         postgres    false    3            �            1259    41334    medicamento    TABLE     �   CREATE TABLE public.medicamento (
    id character varying NOT NULL,
    nombre character varying NOT NULL,
    via_administracion character varying NOT NULL,
    fecha_caducidad character varying NOT NULL,
    precio double precision NOT NULL
);
    DROP TABLE public.medicamento;
       public         postgres    false    3            �            1259    41342    medicamento_componente    TABLE     �   CREATE TABLE public.medicamento_componente (
    id_medicamento character varying NOT NULL,
    id_componente character varying NOT NULL
);
 *   DROP TABLE public.medicamento_componente;
       public         postgres    false    3            �            1259    41360    medicamento_existencia    TABLE     y   CREATE TABLE public.medicamento_existencia (
    id character varying NOT NULL,
    num_medicamentos integer NOT NULL
);
 *   DROP TABLE public.medicamento_existencia;
       public         postgres    false    3            �            1259    41373    persona    TABLE     n  CREATE TABLE public.persona (
    id character varying NOT NULL,
    primer_nombre character varying NOT NULL,
    segundo_nombre character varying NOT NULL,
    apellido_paterno character varying NOT NULL,
    apellido_materno character varying NOT NULL,
    edad integer NOT NULL,
    numero_telefono character varying NOT NULL,
    direccion character varying
);
    DROP TABLE public.persona;
       public         postgres    false    3            �            1259    41386    vendedor    TABLE     �   CREATE TABLE public.vendedor (
    num_empleado character varying NOT NULL,
    sueldo double precision NOT NULL,
    correo character varying NOT NULL,
    password character varying NOT NULL,
    persona character varying
);
    DROP TABLE public.vendedor;
       public         postgres    false    3            �            1259    41399    vendedor_venta    TABLE     z   CREATE TABLE public.vendedor_venta (
    num_empleado character varying NOT NULL,
    folio character varying NOT NULL
);
 "   DROP TABLE public.vendedor_venta;
       public         postgres    false    3            �            1259    41407    venta    TABLE     �   CREATE TABLE public.venta (
    folio character varying NOT NULL,
    fecha character varying NOT NULL,
    hora character varying NOT NULL,
    subtotal character varying NOT NULL
);
    DROP TABLE public.venta;
       public         postgres    false    3            �            1259    41425    venta_producto    TABLE     �   CREATE TABLE public.venta_producto (
    folio character varying NOT NULL,
    id_medicamento character varying NOT NULL,
    cantidad integer NOT NULL
);
 "   DROP TABLE public.venta_producto;
       public         postgres    false    3            ?          0    41297    cliente 
   TABLE DATA               ?   COPY public.cliente (num_tarjeta, puntos, persona) FROM stdin;
    public       postgres    false    196   B       @          0    41305 
   componente 
   TABLE DATA               3   COPY public.componente (id, sustancia) FROM stdin;
    public       postgres    false    197   3B       A          0    41313 	   direccion 
   TABLE DATA               p   COPY public.direccion (id, calle, num_externo, num_interno, colonia, ciudad, estado, codigo_postal) FROM stdin;
    public       postgres    false    198   PB       B          0    41321    farmacia 
   TABLE DATA               Y   COPY public.farmacia (id, nombre, rfc, numero_telefono, direccion, password) FROM stdin;
    public       postgres    false    199   mB       C          0    41334    medicamento 
   TABLE DATA               ^   COPY public.medicamento (id, nombre, via_administracion, fecha_caducidad, precio) FROM stdin;
    public       postgres    false    200   �B       D          0    41342    medicamento_componente 
   TABLE DATA               O   COPY public.medicamento_componente (id_medicamento, id_componente) FROM stdin;
    public       postgres    false    201   �B       E          0    41360    medicamento_existencia 
   TABLE DATA               F   COPY public.medicamento_existencia (id, num_medicamentos) FROM stdin;
    public       postgres    false    202   �B       F          0    41373    persona 
   TABLE DATA               �   COPY public.persona (id, primer_nombre, segundo_nombre, apellido_paterno, apellido_materno, edad, numero_telefono, direccion) FROM stdin;
    public       postgres    false    203   �B       G          0    41386    vendedor 
   TABLE DATA               S   COPY public.vendedor (num_empleado, sueldo, correo, password, persona) FROM stdin;
    public       postgres    false    204   �B       H          0    41399    vendedor_venta 
   TABLE DATA               =   COPY public.vendedor_venta (num_empleado, folio) FROM stdin;
    public       postgres    false    205   C       I          0    41407    venta 
   TABLE DATA               =   COPY public.venta (folio, fecha, hora, subtotal) FROM stdin;
    public       postgres    false    206   8C       J          0    41425    venta_producto 
   TABLE DATA               I   COPY public.venta_producto (folio, id_medicamento, cantidad) FROM stdin;
    public       postgres    false    207   UC       �
           2606    41304    cliente cliente_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (num_tarjeta);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    196            �
           2606    41312    componente componente_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.componente
    ADD CONSTRAINT componente_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.componente DROP CONSTRAINT componente_pkey;
       public         postgres    false    197            �
           2606    41320    direccion direccion_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.direccion
    ADD CONSTRAINT direccion_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.direccion DROP CONSTRAINT direccion_pkey;
       public         postgres    false    198            �
           2606    41328    farmacia farmacia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.farmacia
    ADD CONSTRAINT farmacia_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.farmacia DROP CONSTRAINT farmacia_pkey;
       public         postgres    false    199            �
           2606    41349 2   medicamento_componente medicamento_componente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_componente
    ADD CONSTRAINT medicamento_componente_pkey PRIMARY KEY (id_medicamento, id_componente);
 \   ALTER TABLE ONLY public.medicamento_componente DROP CONSTRAINT medicamento_componente_pkey;
       public         postgres    false    201    201            �
           2606    41367 2   medicamento_existencia medicamento_existencia_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.medicamento_existencia
    ADD CONSTRAINT medicamento_existencia_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.medicamento_existencia DROP CONSTRAINT medicamento_existencia_pkey;
       public         postgres    false    202            �
           2606    41341    medicamento medicamento_pkey1 
   CONSTRAINT     [   ALTER TABLE ONLY public.medicamento
    ADD CONSTRAINT medicamento_pkey1 PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.medicamento DROP CONSTRAINT medicamento_pkey1;
       public         postgres    false    200            �
           2606    41380    persona personal_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT personal_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.persona DROP CONSTRAINT personal_pkey;
       public         postgres    false    203            �
           2606    41393    vendedor vendedor_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (num_empleado);
 @   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_pkey;
       public         postgres    false    204            �
           2606    41406 "   vendedor_venta vendedor_venta_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.vendedor_venta
    ADD CONSTRAINT vendedor_venta_pkey PRIMARY KEY (num_empleado, folio);
 L   ALTER TABLE ONLY public.vendedor_venta DROP CONSTRAINT vendedor_venta_pkey;
       public         postgres    false    205    205            �
           2606    41414    venta venta_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (folio);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public         postgres    false    206            �
           2606    41432 "   venta_producto venta_producto_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.venta_producto
    ADD CONSTRAINT venta_producto_pkey PRIMARY KEY (folio, id_medicamento);
 L   ALTER TABLE ONLY public.venta_producto DROP CONSTRAINT venta_producto_pkey;
       public         postgres    false    207    207            �
           2606    41329     farmacia farmacia_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.farmacia
    ADD CONSTRAINT farmacia_direccion_fkey FOREIGN KEY (direccion) REFERENCES public.direccion(id);
 J   ALTER TABLE ONLY public.farmacia DROP CONSTRAINT farmacia_direccion_fkey;
       public       postgres    false    2729    199    198            �
           2606    41350 @   medicamento_componente medicamento_componente_id_componente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_componente
    ADD CONSTRAINT medicamento_componente_id_componente_fkey FOREIGN KEY (id_componente) REFERENCES public.componente(id);
 j   ALTER TABLE ONLY public.medicamento_componente DROP CONSTRAINT medicamento_componente_id_componente_fkey;
       public       postgres    false    201    197    2727            �
           2606    41355 A   medicamento_componente medicamento_componente_id_medicamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_componente
    ADD CONSTRAINT medicamento_componente_id_medicamento_fkey FOREIGN KEY (id_medicamento) REFERENCES public.medicamento(id);
 k   ALTER TABLE ONLY public.medicamento_componente DROP CONSTRAINT medicamento_componente_id_medicamento_fkey;
       public       postgres    false    2733    200    201            �
           2606    41368 5   medicamento_existencia medicamento_existencia_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicamento_existencia
    ADD CONSTRAINT medicamento_existencia_id_fkey FOREIGN KEY (id) REFERENCES public.medicamento(id);
 _   ALTER TABLE ONLY public.medicamento_existencia DROP CONSTRAINT medicamento_existencia_id_fkey;
       public       postgres    false    200    2733    202            �
           2606    41381    persona persona_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_direccion_fkey FOREIGN KEY (direccion) REFERENCES public.direccion(id);
 H   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_direccion_fkey;
       public       postgres    false    2729    198    203            �
           2606    41394    vendedor vendedor_persona_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_persona_fkey FOREIGN KEY (persona) REFERENCES public.persona(id);
 H   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_persona_fkey;
       public       postgres    false    204    2739    203            �
           2606    41415 (   vendedor_venta vendedor_venta_folio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendedor_venta
    ADD CONSTRAINT vendedor_venta_folio_fkey FOREIGN KEY (folio) REFERENCES public.venta(folio) NOT VALID;
 R   ALTER TABLE ONLY public.vendedor_venta DROP CONSTRAINT vendedor_venta_folio_fkey;
       public       postgres    false    2745    205    206            �
           2606    41420 /   vendedor_venta vendedor_venta_num_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vendedor_venta
    ADD CONSTRAINT vendedor_venta_num_empleado_fkey FOREIGN KEY (num_empleado) REFERENCES public.vendedor(num_empleado) NOT VALID;
 Y   ALTER TABLE ONLY public.vendedor_venta DROP CONSTRAINT vendedor_venta_num_empleado_fkey;
       public       postgres    false    204    2741    205            �
           2606    41433 (   venta_producto venta_producto_folio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta_producto
    ADD CONSTRAINT venta_producto_folio_fkey FOREIGN KEY (folio) REFERENCES public.venta(folio);
 R   ALTER TABLE ONLY public.venta_producto DROP CONSTRAINT venta_producto_folio_fkey;
       public       postgres    false    206    2745    207            �
           2606    41438 1   venta_producto venta_producto_id_medicamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venta_producto
    ADD CONSTRAINT venta_producto_id_medicamento_fkey FOREIGN KEY (id_medicamento) REFERENCES public.medicamento(id);
 [   ALTER TABLE ONLY public.venta_producto DROP CONSTRAINT venta_producto_id_medicamento_fkey;
       public       postgres    false    207    200    2733            ?      x������ � �      @      x������ � �      A      x������ � �      B      x������ � �      C      x������ � �      D      x������ � �      E      x������ � �      F      x������ � �      G      x������ � �      H      x������ � �      I      x������ � �      J      x������ � �     