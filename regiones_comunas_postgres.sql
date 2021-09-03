--
-- Regiones, Provincias y Comunas actualizado 2021 Postgres
-- Jose Duarte - saert3311
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 200 (class 1259 OID 16397)
-- Name: app_regiones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_regiones (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    abreviatura character varying(3),
    capital character varying(30)
);


ALTER TABLE public.app_regiones OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16400)
-- Name: app_regiones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_regiones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_regiones_id_seq OWNER TO postgres;

--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 201
-- Name: app_regiones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_regiones_id_seq OWNED BY public.app_regiones.id;


--
-- TOC entry 2756 (class 2604 OID 16477)
-- Name: app_regiones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regiones ALTER COLUMN id SET DEFAULT nextval('public.app_regiones_id_seq'::regclass);


--
-- TOC entry 2880 (class 0 OID 16397)
-- Dependencies: 200
-- Data for Name: app_regiones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_regiones (id, nombre, abreviatura, capital) FROM stdin;
1	Arica y Parinacota	AP	Arica
2	Tarapacá	TA	Iquique
3	Antofagasta	AN	Antofagasta
4	Atacama	AT	Copiapó
5	Coquimbo	CO	La Serena
6	Valparaiso	VA	valparaíso
7	Metropolitana de Santiago	RM	Santiago
8	Libertador General Bernardo OHiggins	OH	Rancagua
9	Maule	MA	Talca
10	Ñuble	NB	Chillán
11	Biobío	BI	Concepción
12	La Araucanía	IAR	Temuco
13	Los Ríos	LR	Valdivia
14	Los Lagos	LL	Puerto Montt
15	Aysén del General Carlos Ibáñez del Campo	AI	Coyhaique
16	Magallanes y de la Antártica Chilena	MG	Punta Arenas
\.


--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 201
-- Name: app_regiones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_regiones_id_seq', 1, false);


--
-- TOC entry 2758 (class 2606 OID 16494)
-- Name: app_regiones app_regiones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_regiones
    ADD CONSTRAINT app_regiones_pkey PRIMARY KEY (id);


-- Provincias

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 198 (class 1259 OID 16392)
-- Name: app_provincias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_provincias (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    cod_region_id bigint NOT NULL
);


ALTER TABLE public.app_provincias OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16395)
-- Name: app_provincias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_provincias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_provincias_id_seq OWNER TO postgres;

--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 199
-- Name: app_provincias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_provincias_id_seq OWNED BY public.app_provincias.id;


--
-- TOC entry 2756 (class 2604 OID 16476)
-- Name: app_provincias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_provincias ALTER COLUMN id SET DEFAULT nextval('public.app_provincias_id_seq'::regclass);


--
-- TOC entry 2882 (class 0 OID 16392)
-- Dependencies: 198
-- Data for Name: app_provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_provincias (id, nombre, cod_region_id) FROM stdin;
1	Arica	1
2	Parinacota	1
3	Iquique	2
4	El Tamarugal	2
5	Tocopilla	3
6	El Loa	3
7	Antofagasta	3
8	Chañaral	4
9	Copiapó	4
10	Huasco	4
11	Elqui	5
12	Limarí	5
13	Choapa	5
14	Petorca	6
15	Los Andes	6
16	San Felipe de Aconcagua	6
17	Quillota	6
18	Valparaiso	6
19	San Antonio	6
20	Isla de Pascua	6
21	Marga Marga	6
22	Chacabuco	7
23	Santiago	7
24	Cordillera	7
25	Maipo	7
26	Melipilla	7
27	Talagante	7
28	Cachapoal	8
29	Colchagua	8
30	Cardenal Caro	8
31	Curicó	9
32	Talca	9
33	Linares	9
34	Cauquenes	9
35	Diguillín	10
36	Itata	10
37	Punilla	10
38	Bio Bío	11
39	Concepción	11
40	Arauco	11
41	Malleco	12
42	Cautín	12
43	Valdivia	13
44	Ranco	13
45	Osorno	14
46	Llanquihue	14
47	Chiloé	14
48	Palena	14
49	Coyhaique	15
50	Aysén	15
51	General Carrera	15
52	Capitán Prat	15
53	Última Esperanza	16
54	Magallanes	16
55	Tierra del Fuego	16
56	Antártica Chilena	16
\.


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 199
-- Name: app_provincias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_provincias_id_seq', 1, false);


--
-- TOC entry 2759 (class 2606 OID 16492)
-- Name: app_provincias app_provincias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_provincias
    ADD CONSTRAINT app_provincias_pkey PRIMARY KEY (id);


--
-- TOC entry 2757 (class 1259 OID 16540)
-- Name: app_provincias_cod_region_id_c540eff9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_provincias_cod_region_id_c540eff9 ON public.app_provincias USING btree (cod_region_id);


--
-- TOC entry 2760 (class 2606 OID 16561)
-- Name: app_provincias app_provincias_cod_region_id_c540eff9_fk_app_regiones_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_provincias
    ADD CONSTRAINT app_provincias_cod_region_id_c540eff9_fk_app_regiones_id FOREIGN KEY (cod_region_id) REFERENCES public.app_regiones(id) DEFERRABLE INITIALLY DEFERRED;


-- Comunas


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 196 (class 1259 OID 16387)
-- Name: app_comunas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_comunas (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    cod_provincia_id bigint
);


ALTER TABLE public.app_comunas OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16390)
-- Name: app_comunas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_comunas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_comunas_id_seq OWNER TO postgres;

--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 197
-- Name: app_comunas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_comunas_id_seq OWNED BY public.app_comunas.id;


--
-- TOC entry 2756 (class 2604 OID 16475)
-- Name: app_comunas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_comunas ALTER COLUMN id SET DEFAULT nextval('public.app_comunas_id_seq'::regclass);


--
-- TOC entry 2882 (class 0 OID 16387)
-- Dependencies: 196
-- Data for Name: app_comunas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_comunas (id, nombre, cod_provincia_id) FROM stdin;
1	Arica	1
2	Camarones	1
3	General Lagos	2
4	Putre	2
5	Alto Hospicio	3
6	Iquique	3
7	Camiña	4
8	Colchane	4
9	Huara	4
10	Pica	4
11	Pozo Almonte	4
12	Tocopilla	5
13	María Elena	5
14	Calama	6
15	Ollague	6
16	San Pedro de Atacama	6
17	Antofagasta	7
18	Mejillones	7
19	Sierra Gorda	7
20	Taltal	7
21	Chañaral	8
22	Diego de Almagro	8
23	Copiapó	9
24	Caldera	9
25	Tierra Amarilla	9
26	Vallenar	10
27	Alto del Carmen	10
28	Freirina	10
29	Huasco	10
30	La Serena	11
31	Coquimbo	11
32	Andacollo	11
33	La Higuera	11
34	Paihuano	11
35	Vicuña	11
36	Ovalle	12
37	Combarbalá	12
38	Monte Patria	12
39	Punitaqui	12
40	Río Hurtado	12
41	Illapel	13
42	Canela	13
43	Los Vilos	13
44	Salamanca	13
45	La Ligua	14
46	Cabildo	14
47	Zapallar	14
48	Papudo	14
49	Petorca	14
50	Los Andes	15
51	San Esteban	15
52	Calle Larga	15
53	Rinconada	15
54	San Felipe	16
55	Llaillay	16
56	Putaendo	16
57	Santa María	16
58	Catemu	16
59	Panquehue	16
60	Quillota	17
61	La Cruz	17
62	La Calera	17
63	Nogales	17
64	Hijuelas	17
65	Valparaíso	18
66	Viña del Mar	18
67	Concón	18
68	Quintero	18
69	Puchuncaví	18
70	Casablanca	18
71	Juan Fernández	18
72	San Antonio	19
73	Cartagena	19
74	El Tabo	19
75	El Quisco	19
76	Algarrobo	19
77	Santo Domingo	19
78	Isla de Pascua	20
79	Quilpué	21
80	Limache	21
81	Olmué	21
82	Villa Alemana	21
83	Colina	22
84	Lampa	22
85	Tiltil	22
86	Santiago	23
87	Vitacura	23
88	San Ramón	23
89	San Miguel	23
90	San Joaquín	23
91	Renca	23
92	Recoleta	23
93	Quinta Normal	23
94	Quilicura	23
95	Pudahuel	23
96	Providencia	23
97	Peñalolén	23
98	Pedro Aguirre Cerda	23
99	Ñuñoa	23
100	Maipú	23
101	Macul	23
102	Lo Prado	23
103	Lo Espejo	23
104	Lo Barnechea	23
105	Las Condes	23
106	La Reina	23
107	La Pintana	23
108	La Granja	23
109	La Florida	23
110	La Cisterna	23
111	Independencia	23
112	Huechuraba	23
113	Estación Central	23
114	El Bosque	23
115	Conchalí	23
116	Cerro Navia	23
117	Cerrillos	23
118	Puente Alto	24
119	San José de Maipo	24
120	Pirque	24
121	San Bernardo	25
122	Buin	25
123	Paine	25
124	Calera de Tango	25
125	Melipilla	26
126	Alhué	26
127	Curacaví	26
128	María Pinto	26
129	San Pedro	26
130	Isla de Maipo	27
131	El Monte	27
132	Padre Hurtado	27
133	Peñaflor	27
134	Talagante	27
135	Codegua	28
136	Coínco	28
137	Coltauco	28
138	Doñihue	28
139	Graneros	28
140	Las Cabras	28
141	Machalí	28
142	Malloa	28
143	Mostazal	28
144	Olivar	28
145	Peumo	28
146	Pichidegua	28
147	Quinta de Tilcoco	28
148	Rancagua	28
149	Rengo	28
150	Requínoa	28
151	San Vicente de Tagua Tagua	28
152	Chépica	29
153	Chimbarongo	29
154	Lolol	29
155	Nancagua	29
156	Palmilla	29
157	Peralillo	29
158	Placilla	29
159	Pumanque	29
160	San Fernando	29
161	Santa Cruz	29
162	La Estrella	30
163	Litueche	30
164	Marchigüe	30
165	Navidad	30
166	Paredones	30
167	Pichilemu	30
168	Curicó	31
169	Hualañé	31
170	Licantén	31
171	Molina	31
172	Rauco	31
173	Romeral	31
174	Sagrada Familia	31
175	Teno	31
176	Vichuquén	31
177	Talca	32
178	San Clemente	32
179	Pelarco	32
180	Pencahue	32
181	Maule	32
182	San Rafael	32
183	Curepto	33
184	Constitución	32
185	Empedrado	32
186	Río Claro	32
187	Linares	33
188	San Javier	33
189	Parral	33
190	Villa Alegre	33
191	Longaví	33
192	Colbún	33
193	Retiro	33
194	Yerbas Buenas	33
195	Cauquenes	34
196	Chanco	34
197	Pelluhue	34
198	Bulnes	35
199	Chillán	35
200	Chillán Viejo	35
201	El Carmen	35
202	Pemuco	35
203	Pinto	35
204	Quillón	35
205	San Ignacio	35
206	Yungay	35
207	Cobquecura	36
208	Coelemu	36
209	Ninhue	36
210	Portezuelo	36
211	Quirihue	36
212	Ránquil	36
213	Treguaco	36
214	San Carlos	37
215	Coihueco	37
216	San Nicolás	37
217	Ñiquén	37
218	San Fabián	37
219	Alto Biobío	38
220	Antuco	38
221	Cabrero	38
222	Laja	38
223	Los Ángeles	38
224	Mulchén	38
225	Nacimiento	38
226	Negrete	38
227	Quilaco	38
228	Quilleco	38
229	San Rosendo	38
230	Santa Bárbara	38
231	Tucapel	38
232	Yumbel	38
233	Concepción	39
234	Coronel	39
235	Chiguayante	39
236	Florida	39
237	Hualpén	39
238	Hualqui	39
239	Lota	39
240	Penco	39
241	San Pedro de La Paz	39
242	Santa Juana	39
243	Talcahuano	39
244	Tomé	39
245	Arauco	40
246	Cañete	40
247	Contulmo	40
248	Curanilahue	40
249	Lebu	40
250	Los Álamos	40
251	Tirúa	40
252	Angol	41
253	Collipulli	41
254	Curacautín	41
255	Ercilla	41
256	Lonquimay	41
257	Los Sauces	41
258	Lumaco	41
259	Purén	41
260	Renaico	41
261	Traiguén	41
262	Victoria	41
263	Temuco	42
264	Carahue	42
265	Cholchol	42
266	Cunco	42
267	Curarrehue	42
268	Freire	42
269	Galvarino	42
270	Gorbea	42
271	Lautaro	42
272	Loncoche	42
273	Melipeuco	42
274	Nueva Imperial	42
275	Padre Las Casas	42
276	Perquenco	42
277	Pitrufquén	42
278	Pucón	42
279	Saavedra	42
280	Teodoro Schmidt	42
281	Toltén	42
282	Vilcún	42
283	Villarrica	42
284	Valdivia	43
285	Corral	43
286	Lanco	43
287	Los Lagos	43
288	Máfil	43
289	Mariquina	43
290	Paillaco	43
291	Panguipulli	43
292	La Unión	44
293	Futrono	44
294	Lago Ranco	44
295	Río Bueno	44
297	Osorno	45
298	Puerto Octay	45
299	Purranque	45
300	Puyehue	45
301	Río Negro	45
302	San Juan de la Costa	45
303	San Pablo	45
304	Calbuco	46
305	Cochamó	46
306	Fresia	46
307	Frutillar	46
308	Llanquihue	46
309	Los Muermos	46
310	Maullín	46
311	Puerto Montt	46
312	Puerto Varas	46
313	Ancud	47
314	Castro	47
315	Chonchi	47
316	Curaco de Vélez	47
317	Dalcahue	47
318	Puqueldón	47
319	Queilén	47
320	Quellón	47
321	Quemchi	47
322	Quinchao	47
323	Chaitén	48
324	Futaleufú	48
325	Hualaihué	48
326	Palena	48
327	Lago Verde	49
328	Coihaique	49
329	Aysén	50
330	Cisnes	50
331	Guaitecas	50
332	Río Ibáñez	51
333	Chile Chico	51
334	Cochrane	52
335	OHiggins	52
336	Tortel	52
337	Natales	53
338	Torres del Paine	53
339	Laguna Blanca	54
340	Punta Arenas	54
341	Río Verde	54
342	San Gregorio	54
343	Porvenir	55
344	Primavera	55
345	Timaukel	55
346	Cabo de Hornos	56
347	Antártica	56
\.


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 197
-- Name: app_comunas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_comunas_id_seq', 1, false);


--
-- TOC entry 2759 (class 2606 OID 16490)
-- Name: app_comunas app_comunas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_comunas
    ADD CONSTRAINT app_comunas_pkey PRIMARY KEY (id);


--
-- TOC entry 2757 (class 1259 OID 16539)
-- Name: app_comunas_cod_provincia_id_fee86fe4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_comunas_cod_provincia_id_fee86fe4 ON public.app_comunas USING btree (cod_provincia_id);


--
-- TOC entry 2760 (class 2606 OID 16556)
-- Name: app_comunas app_comunas_cod_provincia_id_fee86fe4_fk_app_provincias_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_comunas
    ADD CONSTRAINT app_comunas_cod_provincia_id_fee86fe4_fk_app_provincias_id FOREIGN KEY (cod_provincia_id) REFERENCES public.app_provincias(id) DEFERRABLE INITIALLY DEFERRED;

--Fin

