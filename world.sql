--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: country; Type: TABLE; Schema: public; Owner: christopherblack
--

CREATE TABLE country (
    id integer NOT NULL,
    name text,
    country_code text,
    population integer,
    region_id integer
);


ALTER TABLE country OWNER TO christopherblack;

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: christopherblack
--

CREATE SEQUENCE country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE country_id_seq OWNER TO christopherblack;

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: christopherblack
--

ALTER SEQUENCE country_id_seq OWNED BY country.id;


--
-- Name: land_area; Type: TABLE; Schema: public; Owner: christopherblack
--

CREATE TABLE land_area (
    id integer NOT NULL,
    country_code text,
    sq_km integer
);


ALTER TABLE land_area OWNER TO christopherblack;

--
-- Name: land_area_id_seq; Type: SEQUENCE; Schema: public; Owner: christopherblack
--

CREATE SEQUENCE land_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE land_area_id_seq OWNER TO christopherblack;

--
-- Name: land_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: christopherblack
--

ALTER SEQUENCE land_area_id_seq OWNED BY land_area.id;


--
-- Name: region; Type: TABLE; Schema: public; Owner: christopherblack
--

CREATE TABLE region (
    id integer NOT NULL,
    name text
);


ALTER TABLE region OWNER TO christopherblack;

--
-- Name: region_id_seq; Type: SEQUENCE; Schema: public; Owner: christopherblack
--

CREATE SEQUENCE region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE region_id_seq OWNER TO christopherblack;

--
-- Name: region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: christopherblack
--

ALTER SEQUENCE region_id_seq OWNED BY region.id;


--
-- Name: country id; Type: DEFAULT; Schema: public; Owner: christopherblack
--

ALTER TABLE ONLY country ALTER COLUMN id SET DEFAULT nextval('country_id_seq'::regclass);


--
-- Name: land_area id; Type: DEFAULT; Schema: public; Owner: christopherblack
--

ALTER TABLE ONLY land_area ALTER COLUMN id SET DEFAULT nextval('land_area_id_seq'::regclass);


--
-- Name: region id; Type: DEFAULT; Schema: public; Owner: christopherblack
--

ALTER TABLE ONLY region ALTER COLUMN id SET DEFAULT nextval('region_id_seq'::regclass);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: christopherblack
--

COPY country (id, name, country_code, population, region_id) FROM stdin;
1	Aruba	ABW	105264	3
2	Afghanistan	AFG	35530081	6
3	Angola	AGO	29784193	7
4	Albania	ALB	2873457	2
5	Andorra	AND	76965	2
6	United Arab Emirates	ARE	9400145	4
7	Argentina	ARG	44271041	3
8	Armenia	ARM	2930450	2
9	American Samoa	ASM	55641	1
10	Antigua and Barbuda	ATG	102012	3
11	Australia	AUS	24598933	1
12	Austria	AUT	8809212	2
13	Azerbaijan	AZE	9862429	2
14	Burundi	BDI	10864245	7
15	Belgium	BEL	11372068	2
16	Benin	BEN	11175692	7
17	Burkina Faso	BFA	19193382	7
18	Bangladesh	BGD	164669751	6
19	Bulgaria	BGR	7075991	2
20	Bahrain	BHR	1492584	4
21	Bahamas, The	BHS	395361	3
22	Bosnia and Herzegovina	BIH	3507017	2
23	Belarus	BLR	9507875	2
24	Belize	BLZ	374681	3
25	Bermuda	BMU	65441	5
26	Bolivia	BOL	11051600	3
27	Brazil	BRA	209288278	3
28	Barbados	BRB	285719	3
29	Brunei Darussalam	BRN	428697	1
30	Bhutan	BTN	807610	6
31	Botswana	BWA	2291661	7
32	Central African Republic	CAF	4659080	7
33	Canada	CAN	36708083	5
34	Switzerland	CHE	8466017	2
35	Channel Islands	CHI	165314	2
36	Chile	CHL	18054726	3
37	China	CHN	1386395000	1
38	Cote d'Ivoire	CIV	24294750	7
39	Cameroon	CMR	24053727	7
40	Congo, Dem. Rep.	COD	81339988	7
41	Congo, Rep.	COG	5260750	7
42	Colombia	COL	49065615	3
43	Comoros	COM	813912	7
44	Cabo Verde	CPV	546388	7
45	Costa Rica	CRI	4905769	3
46	Cuba	CUB	11484636	3
47	Curacao	CUW	161014	3
48	Cayman Islands	CYM	61559	3
49	Cyprus	CYP	1179551	2
50	Czech Republic	CZE	10591323	2
51	Germany	DEU	82695000	2
52	Djibouti	DJI	956985	4
53	Dominica	DMA	73925	3
54	Denmark	DNK	5769603	2
55	Dominican Republic	DOM	10766998	3
56	Algeria	DZA	41318142	4
57	Ecuador	ECU	16624858	3
58	Egypt, Arab Rep.	EGY	97553151	4
60	Spain	ESP	46572028	2
61	Estonia	EST	1315480	2
62	Ethiopia	ETH	104957438	7
63	Finland	FIN	5511303	2
64	Fiji	FJI	905502	1
65	France	FRA	67118648	2
66	Faroe Islands	FRO	49290	2
67	Micronesia, Fed. Sts.	FSM	105544	1
68	Gabon	GAB	2025137	7
69	United Kingdom	GBR	66022273	2
70	Georgia	GEO	3717100	2
71	Ghana	GHA	28833629	7
72	Gibraltar	GIB	34571	2
73	Guinea	GIN	12717176	7
74	Gambia, The	GMB	2100568	7
75	Guinea-Bissau	GNB	1861283	7
76	Equatorial Guinea	GNQ	1267689	7
77	Greece	GRC	10760421	2
78	Grenada	GRD	107825	3
79	Greenland	GRL	56171	2
80	Guatemala	GTM	16913503	3
81	Guam	GUM	164229	1
82	Guyana	GUY	777859	3
83	Hong Kong SAR, China	HKG	7391700	1
84	Honduras	HND	9265067	3
85	Croatia	HRV	4125700	2
86	Haiti	HTI	10981229	3
87	Hungary	HUN	9781127	2
88	Indonesia	IDN	263991379	1
89	Isle of Man	IMN	84287	2
90	India	IND	1339180127	6
91	Ireland	IRL	4813608	2
92	Iran, Islamic Rep.	IRN	81162788	4
93	Iraq	IRQ	38274618	4
94	Iceland	ISL	341284	2
95	Israel	ISR	8712400	4
96	Italy	ITA	60551416	2
97	Jamaica	JAM	2890299	3
98	Jordan	JOR	9702353	4
99	Japan	JPN	126785797	1
100	Kazakhstan	KAZ	18037646	2
101	Kenya	KEN	49699862	7
102	Kyrgyz Republic	KGZ	6201500	2
103	Cambodia	KHM	16005373	1
104	Kiribati	KIR	116398	1
105	St. Kitts and Nevis	KNA	55345	3
106	Korea, Rep.	KOR	51466201	1
107	Kuwait	KWT	4136528	4
108	Lao PDR	LAO	6858160	1
109	Lebanon	LBN	6082357	4
110	Liberia	LBR	4731906	7
111	Libya	LBY	6374616	4
112	St. Lucia	LCA	178844	3
113	Liechtenstein	LIE	37922	2
114	Sri Lanka	LKA	21444000	6
115	Lesotho	LSO	2233339	7
116	Lithuania	LTU	2827721	2
117	Luxembourg	LUX	599449	2
118	Latvia	LVA	1940740	2
119	Macao SAR, China	MAC	622567	1
120	St. Martin (French part)	MAF	32125	3
121	Morocco	MAR	35739580	4
122	Monaco	MCO	38695	2
123	Moldova	MDA	3549750	2
124	Madagascar	MDG	25570895	7
125	Maldives	MDV	436330	6
126	Mexico	MEX	129163276	3
127	Marshall Islands	MHL	53127	1
128	Macedonia, FYR	MKD	2083160	2
129	Mali	MLI	18541980	7
130	Malta	MLT	465292	4
131	Myanmar	MMR	53370609	1
132	Montenegro	MNE	622471	2
133	Mongolia	MNG	3075647	1
134	Northern Mariana Islands	MNP	55144	1
135	Mozambique	MOZ	29668834	7
136	Mauritania	MRT	4420184	7
137	Mauritius	MUS	1264613	7
138	Malawi	MWI	18622104	7
139	Malaysia	MYS	31624264	1
140	Namibia	NAM	2533794	7
141	New Caledonia	NCL	280460	1
142	Niger	NER	21477348	7
143	Nigeria	NGA	190886311	7
144	Nicaragua	NIC	6217581	3
145	Netherlands	NLD	17132854	2
146	Norway	NOR	5282223	2
147	Nepal	NPL	29304998	6
148	Nauru	NRU	13649	1
149	New Zealand	NZL	4793900	1
150	Oman	OMN	4636262	4
151	Pakistan	PAK	197015955	6
152	Panama	PAN	4098587	3
153	Peru	PER	32165485	3
154	Philippines	PHL	104918090	1
155	Palau	PLW	21729	1
156	Papua New Guinea	PNG	8251162	1
157	Poland	POL	37975841	2
158	Puerto Rico	PRI	3337177	3
159	Korea, Dem. People’s Rep.	PRK	25490965	1
160	Portugal	PRT	10293718	2
161	Paraguay	PRY	6811297	3
162	West Bank and Gaza	PSE	4684777	4
163	French Polynesia	PYF	283007	1
164	Qatar	QAT	2639211	4
165	Romania	ROU	19586539	2
166	Russian Federation	RUS	144495044	2
167	Rwanda	RWA	12208407	7
168	Saudi Arabia	SAU	32938213	4
169	Sudan	SDN	40533330	7
170	Senegal	SEN	15850567	7
171	Singapore	SGP	5612253	1
172	Solomon Islands	SLB	611343	1
173	Sierra Leone	SLE	7557212	7
174	El Salvador	SLV	6377853	3
175	San Marino	SMR	33400	2
176	Somalia	SOM	14742523	7
177	Serbia	SRB	7022268	2
178	South Sudan	SSD	12575714	7
179	Sao Tome and Principe	STP	204327	7
180	Suriname	SUR	563402	3
181	Slovak Republic	SVK	5439892	2
182	Slovenia	SVN	2066748	2
183	Sweden	SWE	10067744	2
184	Eswatini	SWZ	1367254	7
185	Sint Maarten (Dutch part)	SXM	41109	3
186	Seychelles	SYC	95843	7
187	Syrian Arab Republic	SYR	18269868	4
188	Turks and Caicos Islands	TCA	35446	3
189	Chad	TCD	14899994	7
190	Togo	TGO	7797694	7
191	Thailand	THA	69037513	1
192	Tajikistan	TJK	8921343	2
193	Turkmenistan	TKM	5758075	2
194	Timor-Leste	TLS	1296311	1
195	Tonga	TON	108020	1
196	Trinidad and Tobago	TTO	1369125	3
197	Tunisia	TUN	11532127	4
198	Turkey	TUR	80745020	2
199	Tuvalu	TUV	11192	1
200	Tanzania	TZA	57310019	7
201	Uganda	UGA	42862958	7
202	Ukraine	UKR	44831159	2
203	Uruguay	URY	3456750	3
204	United States	USA	325719178	5
205	Uzbekistan	UZB	32387200	2
206	St. Vincent and the Grenadines	VCT	109897	3
207	Venezuela, RB	VEN	31977065	3
208	British Virgin Islands	VGB	31196	3
209	Virgin Islands (U.S.)	VIR	107268	3
210	Vietnam	VNM	95540800	1
211	Vanuatu	VUT	276244	1
212	Samoa	WSM	196440	1
213	Kosovo	XKX	1830700	2
214	Yemen, Rep.	YEM	28250420	4
215	South Africa	ZAF	56717156	7
216	Zambia	ZMB	17094130	7
217	Zimbabwe	ZWE	16529904	7
59	Eritrea	ERI	5225606	7
\.


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: christopherblack
--

SELECT pg_catalog.setval('country_id_seq', 1, false);


--
-- Data for Name: land_area; Type: TABLE DATA; Schema: public; Owner: christopherblack
--

COPY land_area (id, country_code, sq_km) FROM stdin;
1	ABW	180
2	AFG	652860
3	AGO	1246700
4	ALB	27400
5	AND	470
6	ARB	13621413
7	ARE	83600
8	ARG	2736690
9	ARM	28470
10	ASM	200
11	ATG	440
12	AUS	7682300
13	AUT	82523
14	AZE	82663
15	BDI	25680
16	BEL	30280
17	BEN	112760
18	BFA	273600
19	BGD	130170
20	BGR	108560
21	BHR	771
22	BHS	10010
23	BIH	51200
24	BLR	202910
25	BLZ	22810
26	BMU	50
27	BOL	1083300
28	BRA	8358140
29	BRB	430
30	BRN	5270
31	BTN	38117
32	BWA	566730
33	CAF	622980
34	CAN	9093510
35	CEB	1103976
36	CHE	39516
37	CHI	190
38	CHL	743532
39	CHN	9388211
40	CIV	318000
41	CMR	472710
42	COD	2267050
43	COG	341500
44	COL	1109500
45	COM	1861
46	CPV	4030
47	CRI	51060
48	CSS	404850
49	CUB	104020
50	CUW	444
51	CYM	240
52	CYP	9240
53	CZE	77210
54	DEU	348900
55	DJI	23180
56	DMA	750
57	DNK	42262
58	DOM	48310
59	DZA	2381741
60	EAP	15913501
61	EAR	33107715
62	EAS	24387020
63	ECA	22622066
64	ECS	27439638
65	ECU	248360
66	EGY	995450
67	EMU	2678181
68	ERI	101000
69	ESP	500210
70	EST	42390
71	ETH	1000000
72	EUU	4238213
73	FCS	15309698
74	FIN	303890
75	FJI	18270
76	FRA	547557
77	FRO	1396
78	FSM	700
79	GAB	257670
80	GBR	241930
81	GEO	69490
82	GHA	227540
83	GIB	10
84	GIN	245720
85	GMB	10120
86	GNB	28120
87	GNQ	28050
88	GRC	128900
89	GRD	340
90	GRL	410450
91	GTM	107160
92	GUM	540
93	GUY	196850
94	HIC	37884607
95	HKG	1050
96	HND	111890
97	HPC	19754791
98	HRV	55960
99	HTI	27560
100	HUN	90530
101	IBD	69397187
102	IBT	95716398
103	IDA	26319211
104	IDB	5937530
105	IDN	1811570
106	IDX	20381681
107	IMN	570
108	IND	2973190
109	INX	\N
110	IRL	68890
111	IRN	1628760
112	IRQ	434320
113	ISL	100250
114	ISR	21640
115	ITA	294140
116	JAM	10830
117	JOR	88780
118	JPN	364560
119	KAZ	2699700
120	KEN	569140
121	KGZ	191800
122	KHM	176520
123	KIR	810
124	KNA	260
125	KOR	97480
126	KWT	17820
127	LAC	16282240
128	LAO	230800
129	LBN	10230
130	LBR	96320
131	LBY	1759540
132	LCA	610
133	LCN	20039364
134	LDC	20138798
135	LIC	14232607
136	LIE	160
137	LKA	62710
138	LMC	22079554
139	LMY	91848566
140	LSO	30360
141	LTE	44530502
142	LTU	62650
143	LUX	2590
144	LVA	62180
145	MAC	30
146	MAF	54
147	MAR	446300
148	MCO	2
149	MDA	32870
150	MDG	581800
151	MDV	300
152	MEA	11236232
153	MEX	1943950
154	MHL	180
155	MIC	77615959
156	MKD	25220
157	MLI	1220190
158	MLT	320
159	MMR	653080
160	MNA	8641281
161	MNE	13450
162	MNG	1553560
163	MNP	460
164	MOZ	786380
165	MRT	1030700
166	MUS	2030
167	MWI	94280
168	MYS	328550
169	NAC	18240980
170	NAM	823290
171	NCL	18280
172	NER	1266700
173	NGA	910770
174	NIC	120340
175	NLD	33690
176	NOR	365245
177	NPL	143350
178	NRU	20
179	NZL	263310
180	OED	34403746
181	OMN	309500
182	OSS	2030709
183	PAK	770880
184	PAN	74340
185	PER	1280000
186	PHL	298170
187	PLW	460
188	PNG	452860
189	POL	306190
190	PRE	20165531
191	PRI	8870
192	PRK	120410
193	PRT	91605
194	PRY	397300
195	PSE	6020
196	PSS	64200
197	PST	31464577
198	PYF	3660
199	QAT	11610
200	ROU	230080
201	RUS	16376870
202	RWA	24670
203	SAS	4771577
204	SAU	2149690
205	SDN	2376000
206	SEN	192530
207	SGP	709
208	SLB	27990
209	SLE	72180
210	SLV	20720
211	SMR	60
212	SOM	627340
213	SRB	87460
214	SSA	23617901
216	SSF	23618361
217	SST	2499759
218	STP	960
219	SUR	156000
220	SVK	48086
221	SVN	20140
222	SWE	407310
223	SWZ	17200
224	SXM	34
225	SYC	460
226	SYR	183630
227	TCA	950
228	TCD	1259200
229	TEA	15793351
230	TEC	22984216
231	TGO	54390
232	THA	510890
233	TJK	138786
234	TKM	469930
235	TLA	19913632
236	TLS	14870
237	TMN	8635261
238	TON	720
239	TSA	4771577
240	TSS	23618361
241	TTO	5130
242	TUN	155360
243	TUR	769630
244	TUV	30
245	TZA	885800
246	UGA	200520
247	UKR	579290
248	UMC	55536405
249	URY	175020
250	USA	9147420
251	UZB	425400
252	VCT	390
253	VEN	882050
254	VGB	150
255	VIR	350
256	VNM	310070
257	VUT	12190
258	WLD	129733173
259	WSM	2830
260	XKX	10887
261	YEM	527970
262	ZAF	1213090
263	ZMB	743390
264	ZWE	386850
215	SSD	644330
\.


--
-- Name: land_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: christopherblack
--

SELECT pg_catalog.setval('land_area_id_seq', 1, false);


--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: christopherblack
--

COPY region (id, name) FROM stdin;
1	East Asia & Pacific
2	Europe & Central Asia
3	Latin America & Caribbean
4	Middle East & North Africa
5	North America
6	South Asia
7	Sub-Saharan Africa
\.


--
-- Name: region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: christopherblack
--

SELECT pg_catalog.setval('region_id_seq', 1, false);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: christopherblack
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: land_area land_area_pkey; Type: CONSTRAINT; Schema: public; Owner: christopherblack
--

ALTER TABLE ONLY land_area
    ADD CONSTRAINT land_area_pkey PRIMARY KEY (id);


--
-- Name: region region_pkey; Type: CONSTRAINT; Schema: public; Owner: christopherblack
--

ALTER TABLE ONLY region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);


--
-- Name: country country_region_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: christopherblack
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_region_id_fkey FOREIGN KEY (region_id) REFERENCES region(id);


--
-- PostgreSQL database dump complete
--

