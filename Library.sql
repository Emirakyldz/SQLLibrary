PGDMP  :    5                 }            Group1Library    17.2    17.2 3    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            .           1262    16388    Group1Library    DATABASE     �   CREATE DATABASE "Group1Library" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Group1Library";
                     postgres    false            �            1259    16494    authors    TABLE     o   CREATE TABLE public.authors (
    authorid integer NOT NULL,
    authorname character varying(255) NOT NULL
);
    DROP TABLE public.authors;
       public         heap r       postgres    false            �            1259    16493    authors_authorid_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_authorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.authors_authorid_seq;
       public               postgres    false    223            /           0    0    authors_authorid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.authors_authorid_seq OWNED BY public.authors.authorid;
          public               postgres    false    222            �            1259    16500    bookauthors    TABLE     `   CREATE TABLE public.bookauthors (
    bookid integer NOT NULL,
    authorid integer NOT NULL
);
    DROP TABLE public.bookauthors;
       public         heap r       postgres    false            �            1259    16478    bookcategories    TABLE     e   CREATE TABLE public.bookcategories (
    bookid integer NOT NULL,
    categoryid integer NOT NULL
);
 "   DROP TABLE public.bookcategories;
       public         heap r       postgres    false            �            1259    16465    books    TABLE     �   CREATE TABLE public.books (
    bookid integer NOT NULL,
    title character varying(255) NOT NULL,
    publishedyear integer,
    agerestriction integer
);
    DROP TABLE public.books;
       public         heap r       postgres    false            �            1259    16464    books_bookid_seq    SEQUENCE     �   CREATE SEQUENCE public.books_bookid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.books_bookid_seq;
       public               postgres    false    218            0           0    0    books_bookid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.books_bookid_seq OWNED BY public.books.bookid;
          public               postgres    false    217            �            1259    16472 
   categories    TABLE     v   CREATE TABLE public.categories (
    categoryid integer NOT NULL,
    categoryname character varying(255) NOT NULL
);
    DROP TABLE public.categories;
       public         heap r       postgres    false            �            1259    16471    categories_categoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categories_categoryid_seq;
       public               postgres    false    220            1           0    0    categories_categoryid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categories_categoryid_seq OWNED BY public.categories.categoryid;
          public               postgres    false    219            �            1259    16516 	   customers    TABLE     �   CREATE TABLE public.customers (
    customerid integer NOT NULL,
    name character varying(255) NOT NULL,
    dateofbirth date NOT NULL
);
    DROP TABLE public.customers;
       public         heap r       postgres    false            �            1259    16515    customers_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customers_customerid_seq;
       public               postgres    false    226            2           0    0    customers_customerid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customers_customerid_seq OWNED BY public.customers.customerid;
          public               postgres    false    225            �            1259    16523    rentals    TABLE     �   CREATE TABLE public.rentals (
    rentalid integer NOT NULL,
    customerid integer,
    bookid integer,
    rentaldate date NOT NULL,
    returndate date
);
    DROP TABLE public.rentals;
       public         heap r       postgres    false            �            1259    16522    rentals_rentalid_seq    SEQUENCE     �   CREATE SEQUENCE public.rentals_rentalid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.rentals_rentalid_seq;
       public               postgres    false    228            3           0    0    rentals_rentalid_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.rentals_rentalid_seq OWNED BY public.rentals.rentalid;
          public               postgres    false    227            u           2604    16497    authors authorid    DEFAULT     t   ALTER TABLE ONLY public.authors ALTER COLUMN authorid SET DEFAULT nextval('public.authors_authorid_seq'::regclass);
 ?   ALTER TABLE public.authors ALTER COLUMN authorid DROP DEFAULT;
       public               postgres    false    223    222    223            s           2604    16468    books bookid    DEFAULT     l   ALTER TABLE ONLY public.books ALTER COLUMN bookid SET DEFAULT nextval('public.books_bookid_seq'::regclass);
 ;   ALTER TABLE public.books ALTER COLUMN bookid DROP DEFAULT;
       public               postgres    false    217    218    218            t           2604    16475    categories categoryid    DEFAULT     ~   ALTER TABLE ONLY public.categories ALTER COLUMN categoryid SET DEFAULT nextval('public.categories_categoryid_seq'::regclass);
 D   ALTER TABLE public.categories ALTER COLUMN categoryid DROP DEFAULT;
       public               postgres    false    219    220    220            v           2604    16519    customers customerid    DEFAULT     |   ALTER TABLE ONLY public.customers ALTER COLUMN customerid SET DEFAULT nextval('public.customers_customerid_seq'::regclass);
 C   ALTER TABLE public.customers ALTER COLUMN customerid DROP DEFAULT;
       public               postgres    false    225    226    226            w           2604    16526    rentals rentalid    DEFAULT     t   ALTER TABLE ONLY public.rentals ALTER COLUMN rentalid SET DEFAULT nextval('public.rentals_rentalid_seq'::regclass);
 ?   ALTER TABLE public.rentals ALTER COLUMN rentalid DROP DEFAULT;
       public               postgres    false    228    227    228            #          0    16494    authors 
   TABLE DATA           7   COPY public.authors (authorid, authorname) FROM stdin;
    public               postgres    false    223    ;       $          0    16500    bookauthors 
   TABLE DATA           7   COPY public.bookauthors (bookid, authorid) FROM stdin;
    public               postgres    false    224   <       !          0    16478    bookcategories 
   TABLE DATA           <   COPY public.bookcategories (bookid, categoryid) FROM stdin;
    public               postgres    false    221   U<                 0    16465    books 
   TABLE DATA           M   COPY public.books (bookid, title, publishedyear, agerestriction) FROM stdin;
    public               postgres    false    218   �<                  0    16472 
   categories 
   TABLE DATA           >   COPY public.categories (categoryid, categoryname) FROM stdin;
    public               postgres    false    220   $>       &          0    16516 	   customers 
   TABLE DATA           B   COPY public.customers (customerid, name, dateofbirth) FROM stdin;
    public               postgres    false    226   �>       (          0    16523    rentals 
   TABLE DATA           W   COPY public.rentals (rentalid, customerid, bookid, rentaldate, returndate) FROM stdin;
    public               postgres    false    228   �?       4           0    0    authors_authorid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.authors_authorid_seq', 18, true);
          public               postgres    false    222            5           0    0    books_bookid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_bookid_seq', 18, true);
          public               postgres    false    217            6           0    0    categories_categoryid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_categoryid_seq', 14, true);
          public               postgres    false    219            7           0    0    customers_customerid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customers_customerid_seq', 11, true);
          public               postgres    false    225            8           0    0    rentals_rentalid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rentals_rentalid_seq', 11, true);
          public               postgres    false    227                       2606    16499    authors authors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (authorid);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public                 postgres    false    223            �           2606    16504    bookauthors bookauthors_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.bookauthors
    ADD CONSTRAINT bookauthors_pkey PRIMARY KEY (bookid, authorid);
 F   ALTER TABLE ONLY public.bookauthors DROP CONSTRAINT bookauthors_pkey;
       public                 postgres    false    224    224            }           2606    16482 "   bookcategories bookcategories_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.bookcategories
    ADD CONSTRAINT bookcategories_pkey PRIMARY KEY (bookid, categoryid);
 L   ALTER TABLE ONLY public.bookcategories DROP CONSTRAINT bookcategories_pkey;
       public                 postgres    false    221    221            y           2606    16470    books books_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (bookid);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public                 postgres    false    218            {           2606    16477    categories categories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (categoryid);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public                 postgres    false    220            �           2606    16521    customers customers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public                 postgres    false    226            �           2606    16528    rentals rentals_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_pkey PRIMARY KEY (rentalid);
 >   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_pkey;
       public                 postgres    false    228            �           2606    16510 %   bookauthors bookauthors_authorid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookauthors
    ADD CONSTRAINT bookauthors_authorid_fkey FOREIGN KEY (authorid) REFERENCES public.authors(authorid) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.bookauthors DROP CONSTRAINT bookauthors_authorid_fkey;
       public               postgres    false    224    223    4735            �           2606    16505 #   bookauthors bookauthors_bookid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookauthors
    ADD CONSTRAINT bookauthors_bookid_fkey FOREIGN KEY (bookid) REFERENCES public.books(bookid) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.bookauthors DROP CONSTRAINT bookauthors_bookid_fkey;
       public               postgres    false    218    224    4729            �           2606    16483 )   bookcategories bookcategories_bookid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookcategories
    ADD CONSTRAINT bookcategories_bookid_fkey FOREIGN KEY (bookid) REFERENCES public.books(bookid) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.bookcategories DROP CONSTRAINT bookcategories_bookid_fkey;
       public               postgres    false    4729    218    221            �           2606    16488 -   bookcategories bookcategories_categoryid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookcategories
    ADD CONSTRAINT bookcategories_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES public.categories(categoryid) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.bookcategories DROP CONSTRAINT bookcategories_categoryid_fkey;
       public               postgres    false    4731    221    220            �           2606    16534    rentals rentals_bookid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_bookid_fkey FOREIGN KEY (bookid) REFERENCES public.books(bookid) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_bookid_fkey;
       public               postgres    false    228    4729    218            �           2606    16529    rentals rentals_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentals
    ADD CONSTRAINT rentals_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.rentals DROP CONSTRAINT rentals_customerid_fkey;
       public               postgres    false    226    228    4739            #   �   x�5��j�@���S�	L7�=�8	��^[ċ7��^�u��r��$����@i�#��qEF�FR�¥׍��-.a�[*������Y�"�������:�7J�2��{Fp�k�C��{�wpf��!Ʉ�P������y�b�V"De~������P.�;A��\4��K�ۘ:E�pM��8�i5+�]�S�$�V}�p_6hR.^{h6�'������-Y���E���.�1�6���L `�      $   C   x����0İ�����CrzI�u023YY�lN����\޼8�@�8����ă;6�x��S��      !   I   x����0�0LU�qv��s?N��0��M!xLc��u��T�����ڶT���Փj&¿��=$�=)         f  x�-Q�N�0=���'�(N���
�"�V�R/\��4���&U���G�-3����뤖�>[w�,6�Vyj!R8�Fn�� 7:�DP�����Q��a.��c�"U�e=�P��u2��s2D��\d��I>��L|�KE�q�;��k�l�6hp���[�
(EG<������Q�Q�ʝ�5q�|���`��13��gllDՂU*�����޸���J�Y���v�qe����O�H�$�dd���:���E=��3XO�E���;y�m�����w�Uo����˚o6��ٜvt'jf�{30V�T���Xy��b�#M�o�B�m���8e4{�c�6��Z�lI��R|�
!����          �   x���
�0 ϻ_����X��AA��KHS��e�����0c�lJ����x\Ac�ڔ��SN�#وk����cg�����h�)q�-\g�K�<y����� �<@��	�����y4Z�r�aD��'-��s:�JMgaA��:p�w����="      &   �   x�-��n�0D��W�R١8BA+��r�%���$ش���&�Ҝ<���ֻ��qq�	�iXq��D�z��u
��Q���,���&��`��֟ ����$|��g=��vq&�Zq��%��w�ͷ��TX(a|��F�|w���N+8�`w_����X����![���=eDq���X�.P�5���(�(c����@�����E�f���͡4(o��'D���J�      (   r   x�MO��0{�^�ca�&RA��c���X�j�`�9D�����L&�}��}da��o��b�T�������Uಣ�-��ᠵ�J�[�t�$QgPk��Dk��z"��a/     