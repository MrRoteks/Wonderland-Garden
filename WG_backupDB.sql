PGDMP                         {           Wonderland_Garden_DB    15.0    15.0 !    !           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            "           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            #           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            $           1262    16808    Wonderland_Garden_DB    DATABASE     �   CREATE DATABASE "Wonderland_Garden_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
 &   DROP DATABASE "Wonderland_Garden_DB";
                postgres    false            �            1259    16826    Administrators    TABLE     �   CREATE TABLE public."Administrators" (
    id_admin bigint NOT NULL,
    login text,
    password text,
    name text,
    surname text,
    phone text
);
 $   DROP TABLE public."Administrators";
       public         heap    postgres    false            �            1259    16825    Administrators_id_admin_seq    SEQUENCE     �   ALTER TABLE public."Administrators" ALTER COLUMN id_admin ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Administrators_id_admin_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16834    Chats    TABLE        CREATE TABLE public."Chats" (
    id_chat bigint NOT NULL,
    id_worker bigint,
    id_user bigint,
    chat_contents text
);
    DROP TABLE public."Chats";
       public         heap    postgres    false            �            1259    16833    Chats_id_chat_seq    SEQUENCE     �   ALTER TABLE public."Chats" ALTER COLUMN id_chat ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Chats_id_chat_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    16852    Orders    TABLE     �   CREATE TABLE public."Orders" (
    id_order bigint NOT NULL,
    start_date text,
    end_date text,
    id_user bigint,
    id_worker bigint,
    status text
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    16851    Orders_id_order_seq    SEQUENCE     �   ALTER TABLE public."Orders" ALTER COLUMN id_order ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Orders_id_order_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    16810    Users    TABLE     �   CREATE TABLE public."Users" (
    id_user bigint NOT NULL,
    login text,
    password text,
    name text,
    surname text,
    phone text,
    address text
);
    DROP TABLE public."Users";
       public         heap    postgres    false            �            1259    16809    Users_id_user_seq    SEQUENCE     �   ALTER TABLE public."Users" ALTER COLUMN id_user ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Users_id_user_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16818    Workers    TABLE     �   CREATE TABLE public."Workers" (
    id_worker bigint NOT NULL,
    login text,
    password text,
    name text,
    surname text,
    phone text,
    competence text
);
    DROP TABLE public."Workers";
       public         heap    postgres    false            �            1259    16817    Workers_id_worker_seq    SEQUENCE     �   ALTER TABLE public."Workers" ALTER COLUMN id_worker ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Workers_id_worker_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217                      0    16826    Administrators 
   TABLE DATA           [   COPY public."Administrators" (id_admin, login, password, name, surname, phone) FROM stdin;
    public          postgres    false    219   \%                 0    16834    Chats 
   TABLE DATA           M   COPY public."Chats" (id_chat, id_worker, id_user, chat_contents) FROM stdin;
    public          postgres    false    221   y%                 0    16852    Orders 
   TABLE DATA           ^   COPY public."Orders" (id_order, start_date, end_date, id_user, id_worker, status) FROM stdin;
    public          postgres    false    223   �%                 0    16810    Users 
   TABLE DATA           Z   COPY public."Users" (id_user, login, password, name, surname, phone, address) FROM stdin;
    public          postgres    false    215   �%                 0    16818    Workers 
   TABLE DATA           a   COPY public."Workers" (id_worker, login, password, name, surname, phone, competence) FROM stdin;
    public          postgres    false    217   �%       %           0    0    Administrators_id_admin_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."Administrators_id_admin_seq"', 1, false);
          public          postgres    false    218            &           0    0    Chats_id_chat_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Chats_id_chat_seq"', 1, false);
          public          postgres    false    220            '           0    0    Orders_id_order_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Orders_id_order_seq"', 1, false);
          public          postgres    false    222            (           0    0    Users_id_user_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Users_id_user_seq"', 1, false);
          public          postgres    false    214            )           0    0    Workers_id_worker_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Workers_id_worker_seq"', 1, false);
          public          postgres    false    216            ~           2606    16832 "   Administrators Administrators_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Administrators"
    ADD CONSTRAINT "Administrators_pkey" PRIMARY KEY (id_admin);
 P   ALTER TABLE ONLY public."Administrators" DROP CONSTRAINT "Administrators_pkey";
       public            postgres    false    219            �           2606    16840    Chats Chats_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT "Chats_pkey" PRIMARY KEY (id_chat);
 >   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT "Chats_pkey";
       public            postgres    false    221            �           2606    16856    Orders Orders_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id_order);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    223            z           2606    16816    Users Users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id_user);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    215            |           2606    16824    Workers Workers_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Workers"
    ADD CONSTRAINT "Workers_pkey" PRIMARY KEY (id_worker);
 B   ALTER TABLE ONLY public."Workers" DROP CONSTRAINT "Workers_pkey";
       public            postgres    false    217            �           2606    16841    Chats id_user    FK CONSTRAINT     u   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT id_user FOREIGN KEY (id_user) REFERENCES public."Users"(id_user);
 9   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT id_user;
       public          postgres    false    221    3194    215            �           2606    16859    Orders id_user    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT id_user FOREIGN KEY (id_user) REFERENCES public."Users"(id_user) NOT VALID;
 :   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT id_user;
       public          postgres    false    223    215    3194            �           2606    16846    Chats id_worker    FK CONSTRAINT     }   ALTER TABLE ONLY public."Chats"
    ADD CONSTRAINT id_worker FOREIGN KEY (id_worker) REFERENCES public."Workers"(id_worker);
 ;   ALTER TABLE ONLY public."Chats" DROP CONSTRAINT id_worker;
       public          postgres    false    3196    217    221            �           2606    16864    Orders id_worker    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT id_worker FOREIGN KEY (id_worker) REFERENCES public."Workers"(id_worker) NOT VALID;
 <   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT id_worker;
       public          postgres    false    223    217    3196                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     