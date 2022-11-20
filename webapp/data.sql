--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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

SET default_table_access_method = heap;

--
-- Name: communities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.communities (
    language_id integer,
    world_region_id integer,
    country_id integer,
    language_family_id integer,
    location_id integer,
    community_size text
);


--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer,
    country text
);


--
-- Name: language_families; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.language_families (
    id integer,
    language_family text
);


--
-- Name: languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.languages (
    id integer,
    language text
);


--
-- Name: locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locations (
    id integer,
    location text
);


--
-- Name: world_regions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.world_regions (
    id integer,
    world_region text
);


--
-- Data for Name: communities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.communities (language_id, world_region_id, country_id, language_family_id, location_id, community_size) FROM stdin;
1	1	1	1	1	Smallest
2	2	2	2	2	Small
2	2	2	2	3	Small
3	3	3	3	2	Smallest
3	3	3	3	4	Smallest
4	4	4	4	5	Smallest
5	1	1	1	1	Small
6	4	5	4	6	Smallest
7	5	6	2	7	Largest
7	5	6	2	8	Largest
7	5	6	2	9	Largest
7	5	6	2	10	Largest
7	5	6	2	11	Largest
7	5	6	2	12	Largest
7	5	6	2	13	Large
8	6	7	2	14	Small
9	4	8	4	15	Small
9	4	8	4	16	Small
9	4	8	4	17	Large
9	4	8	4	18	Medium
10	3	9	3	19	Smallest
11	7	10	5	20	Medium
11	7	10	5	2	Medium
12	8	11	2	21	Small
13	9	12	6	22	Medium
13	9	12	6	23	Small
14	5	6	7	22	Large
14	5	6	7	24	Large
14	5	6	7	25	Large
14	5	6	7	26	Large
14	5	6	7	27	Large
15	10	13	5	28	Small
15	10	13	5	29	Small
15	10	13	5	30	Small
16	11	14	8	31	Smallest
17	4	5	4	29	Small
18	2	15	2	32	Smallest
19	12	16	2	12	Small
20	13	17	6	33	Smallest
21	4	18	4	5	Smallest
22	2	2	2	34	Small
23	2	2	2	35	Small
23	2	2	2	36	Small
23	2	2	2	37	Small
24	14	19	2	31	Medium
25	2	20	2	38	Small
25	2	20	2	39	Medium
26	4	8	4	17	Medium
26	4	8	4	15	Small
26	4	8	4	9	Small
27	13	17	2	40	Smallest
28	1	21	5	41	Small
29	2	22	2	2	Smallest
30	15	23	2	32	Medium
31	8	24	2	42	Medium
31	8	24	2	43	Small
32	1	25	9	44	Smallest
33	13	26	2	45	Medium
34	14	27	10	22	Smallest
35	1	28	11	8	Small
35	1	28	11	46	Medium
35	1	28	11	47	Medium
36	16	29	4	48	Smallest
37	12	30	2	12	Small
38	13	31	6	4	Smallest
39	4	32	4	5	Smallest
40	3	3	3	4	Small
41	2	33	2	49	Small
42	13	34	2	46	Smallest
43	13	35	6	50	Smallest
43	13	35	6	51	Small
44	4	36	12	52	Small
44	4	36	12	12	Medium
44	4	36	12	53	Large
45	3	37	3	19	Smallest
46	3	38	3	4	Smallest
47	13	39	6	4	Small
48	4	4	4	54	Smallest
48	4	4	4	12	Small
48	4	4	4	55	Smallest
49	13	31	6	56	Smallest
49	13	31	6	57	Small
49	13	31	6	15	Small
50	12	40	2	58	Medium
50	12	40	2	59	Small
51	17	41	2	50	Smallest
52	16	29	4	49	Small
53	2	42	13	34	Small
53	2	42	13	60	Small
53	2	42	13	8	Small
54	4	43	4	61	Small
55	3	3	3	62	Small
56	3	3	3	22	Small
57	3	3	3	22	Small
58	8	44	2	50	Large
58	8	44	2	63	Small
59	4	32	4	5	Smallest
60	18	45	2	64	Smallest
60	18	45	2	65	Small
60	18	45	2	66	Smallest
60	18	45	2	67	Small
61	11	46	2	68	Medium
62	6	47	4	69	Smallest
63	2	2	2	70	Small
64	13	48	2	22	Largest
64	13	48	2	71	Small
64	13	48	2	72	Large
64	13	48	2	55	Largest
64	13	48	2	73	Smallest
64	13	48	2	74	Large
64	13	48	2	46	Large
65	3	3	3	4	Smallest
66	13	49	2	22	Small
66	13	49	2	75	Small
67	1	50	5	76	Medium
67	1	50	5	77	Medium
67	1	50	5	47	Medium
68	3	9	3	19	Small
68	3	9	3	78	Smallest
69	13	51	2	55	Small
70	19	52	2	69	Smallest
71	14	27	14	19	Small
72	14	27	2	22	Medium
72	14	27	2	79	Medium
73	4	53	4	72	Smallest
74	3	9	3	44	Smallest
75	2	54	2	80	Small
75	2	54	2	56	Small
75	2	54	2	2	Small
76	14	55	2	8	Medium
76	14	55	2	81	Medium
76	14	55	2	2	Medium
76	14	55	2	42	Medium
77	8	11	2	82	Smallest
77	8	11	2	2	Small
77	8	11	2	83	Small
78	11	56	15	74	Smallest
79	20	57	2	26	Medium
80	3	38	3	4	Smallest
80	3	38	3	2	Smallest
81	17	58	2	42	Small
81	17	58	2	46	Small
81	17	58	2	84	Large
82	18	59	2	82	Small
82	18	59	2	17	Small
83	2	60	11	85	Smallest
84	4	8	3	17	Smallest
85	13	61	6	86	Smallest
86	3	62	6	42	Smallest
86	3	62	6	87	Small
86	3	62	6	88	Small
86	3	62	6	4	Medium
87	13	63	16	89	Smallest
88	18	64	17	44	Small
89	1	1	1	1	Smallest
90	4	4	4	54	Smallest
91	2	2	2	49	Small
91	2	2	2	3	Small
92	2	2	2	85	Medium
93	2	2	2	79	Medium
94	16	29	2	48	Small
95	16	29	2	48	Small
96	5	65	2	69	Medium
97	9	66	6	90	Large
97	9	66	6	91	Small
97	9	66	6	92	Large
97	9	66	6	93	Largest
97	9	66	6	85	Largest
97	9	66	6	34	Large
98	4	67	2	94	Small
98	4	67	2	8	Smallest
99	12	68	2	95	Smallest
100	2	69	2	96	Small
100	2	69	2	97	Medium
100	2	69	2	76	Medium
101	2	42	2	14	Small
102	3	9	3	19	Medium
102	3	9	3	71	Smallest
103	11	70	2	98	Large
103	11	70	2	99	Medium
103	11	70	2	100	Large
103	11	70	2	55	Large
103	11	70	2	101	Small
103	11	70	2	102	Medium
104	3	3	3	71	Small
105	16	71	5	14	Smallest
106	13	72	6	22	Smallest
107	9	73	17	93	Smallest
108	13	48	2	22	Smallest
109	1	74	5	103	Smallest
110	13	31	6	22	Smallest
111	21	6	3	69	Smallest
112	13	17	6	71	Smallest
113	9	75	6	90	Small
114	13	31	6	4	Smallest
115	7	76	5	2	Smallest
116	3	9	2	19	Smallest
117	18	64	9	74	Smallest
117	18	64	9	44	Smallest
118	4	8	4	104	Smallest
119	5	6	18	34	Smallest
120	10	77	4	69	Smallest
121	10	78	4	21	Smallest
122	14	79	2	105	Small
123	11	14	8	106	Smallest
123	11	14	8	107	Smallest
124	5	6	19	68	Smallest
125	13	80	2	46	Medium
126	13	61	6	86	Smallest
127	11	81	20	53	Smallest
128	18	64	2	54	Smallest
128	18	64	2	26	Medium
129	21	82	3	14	Smallest
130	18	64	11	44	Smallest
131	2	2	2	108	Small
131	2	2	2	109	Small
131	2	2	2	110	Small
132	1	83	5	73	Large
132	1	83	5	100	Medium
132	1	83	5	66	Large
132	1	83	5	93	Large
133	1	84	2	14	Medium
133	1	84	2	111	Medium
134	2	2	2	32	Smallest
135	9	12	6	23	Small
135	9	12	6	4	Medium
136	14	85	2	112	Medium
136	14	85	2	4	Largest
136	14	85	2	43	Medium
137	10	86	4	69	Smallest
138	7	87	5	57	Medium
138	7	87	5	113	Small
138	7	87	5	38	Small
139	2	15	2	2	Medium
140	18	88	11	107	Medium
141	2	89	2	114	Small
141	2	89	2	82	Small
141	2	89	2	2	Medium
142	12	90	2	115	Large
142	12	90	2	31	Medium
142	12	90	2	116	Medium
143	11	14	8	117	Smallest
144	2	91	2	2	Medium
145	2	92	11	118	Small
146	18	93	2	119	Small
146	18	93	2	2	Small
147	4	8	4	120	Smallest
148	4	8	4	121	Smallest
149	4	8	4	122	Small
150	8	94	2	116	Smallest
150	8	94	2	93	Small
151	8	95	2	38	Smallest
152	7	96	5	123	Small
153	13	97	2	124	Medium
153	13	97	2	42	Smallest
153	13	97	2	125	Small
154	3	62	6	88	Smallest
154	3	62	6	4	Smallest
155	13	98	2	14	Smallest
156	10	99	21	69	Small
157	13	31	6	4	Smallest
158	12	100	2	15	Smallest
159	12	100	2	15	Smallest
160	12	101	2	126	Largest
160	12	101	2	127	Largest
160	12	101	2	31	Largest
160	12	101	2	41	Largest
160	12	101	2	76	Largest
160	12	101	2	17	Largest
160	12	101	2	115	Largest
161	16	29	4	48	Smallest
162	17	102	6	65	Smallest
163	8	103	2	116	Large
163	8	103	2	95	Medium
163	8	103	2	128	Large
163	8	103	2	129	Medium
164	4	104	12	12	Medium
164	4	104	12	54	Smallest
164	4	104	12	5	Medium
165	13	105	6	130	Smallest
165	13	105	6	86	Small
166	1	106	2	65	Medium
167	4	4	4	12	Smallest
168	2	107	2	42	Medium
168	2	107	2	131	Medium
169	14	108	14	5	Medium
169	14	108	14	38	Medium
169	14	108	14	132	Medium
170	14	108	2	99	Large
170	14	108	2	133	Medium
170	14	108	2	72	Large
170	14	108	2	8	Medium
170	14	108	2	31	Largest
171	4	5	4	55	Smallest
171	4	5	4	134	Small
171	4	5	4	7	Small
172	4	5	4	53	Medium
173	7	109	5	103	Medium
173	7	109	5	57	Medium
173	7	109	5	2	Large
173	7	109	5	35	Medium
173	7	109	5	38	Small
174	7	110	5	110	Smallest
175	2	2	2	34	Small
175	2	2	2	110	Small
176	4	5	4	54	Small
177	8	111	7	14	Small
178	20	112	22	2	Smallest
178	20	112	22	14	Small
179	4	113	4	130	Medium
179	4	113	4	55	Smallest
180	16	29	4	49	Small
181	3	114	6	63	Smallest
182	16	115	4	42	Smallest
183	4	8	4	130	Medium
184	16	29	4	48	Small
185	19	116	3	14	Smallest
186	20	117	22	12	Small
186	20	117	22	97	Small
186	20	117	22	93	Medium
187	8	118	2	116	Smallest
188	4	119	4	55	Smallest
189	4	120	4	104	Smallest
190	8	121	2	76	Smallest
191	8	122	2	12	Large
191	8	122	2	135	Medium
191	8	122	2	136	Medium
191	8	122	2	137	Large
191	8	122	2	138	Medium
191	8	122	2	58	Medium
191	8	122	2	5	Medium
192	14	123	2	58	Smallest
193	8	124	2	116	Smallest
194	2	2	2	139	Small
194	2	2	2	43	Small
195	9	125	6	36	Largest
195	9	125	6	93	Largest
195	9	125	6	90	Largest
195	9	125	6	85	Largest
196	4	126	4	122	Medium
196	4	126	4	7	Medium
196	4	126	4	12	Medium
197	7	127	23	123	Smallest
198	4	8	4	122	Small
199	4	4	4	12	Small
200	2	22	2	8	Medium
200	2	22	2	2	Medium
200	2	22	2	97	Small
201	2	2	2	3	Smallest
202	9	75	6	90	Small
203	12	128	24	73	Small
203	12	128	24	102	Smallest
203	12	128	24	140	Medium
203	12	128	24	141	Largest
204	13	51	6	142	Smallest
205	2	129	2	63	Medium
205	2	129	2	24	Medium
205	2	129	2	143	Medium
205	2	129	2	49	Large
206	4	130	4	68	Smallest
207	1	131	25	84	Small
207	1	131	25	144	Small
207	1	131	25	85	Medium
208	8	132	2	71	Largest
208	8	132	2	38	Medium
208	8	132	2	96	Small
208	8	132	2	50	Large
208	8	132	2	145	Largest
209	10	133	5	29	Small
209	10	133	5	12	Small
210	13	31	6	22	Smallest
211	4	8	2	5	Large
212	16	29	4	104	Small
213	10	134	4	57	Smallest
213	10	134	4	69	Smallest
214	21	135	3	14	Smallest
215	4	136	12	61	Smallest
216	4	43	4	61	Smallest
217	8	137	2	38	Medium
218	4	138	4	120	Smallest
219	2	139	2	146	Medium
219	2	139	2	137	Medium
219	2	139	2	2	Large
219	2	139	2	103	Medium
219	2	139	2	53	Medium
220	12	140	2	123	Medium
220	12	140	2	147	Medium
221	12	141	2	15	Smallest
222	14	142	26	86	Small
222	14	142	26	148	Small
223	4	4	4	12	Small
224	4	143	2	120	Smallest
225	13	17	2	33	Largest
225	13	17	2	42	Medium
225	13	17	2	57	Largest
225	13	17	2	146	Medium
226	1	144	5	42	Medium
227	5	6	2	7	Smallest
227	5	6	2	12	Smallest
228	4	145	4	68	Smallest
229	10	13	5	29	Smallest
230	13	146	2	38	Smallest
231	4	4	12	12	Smallest
232	13	39	6	38	Smallest
232	13	39	6	22	Small
233	14	147	2	58	Large
233	14	147	2	6	Medium
233	14	147	2	95	Largest
233	14	147	2	147	Large
234	13	31	6	19	Smallest
235	9	125	6	96	Medium
236	12	148	2	138	Largest
236	12	148	2	149	Medium
236	12	148	2	58	Largest
236	12	148	2	147	Largest
236	12	148	2	132	Medium
237	7	149	2	110	Smallest
237	7	149	2	69	Smallest
238	3	114	6	63	Smallest
239	9	125	6	90	Small
239	9	125	6	34	Small
240	9	150	27	90	Medium
241	18	151	2	102	Medium
241	18	151	2	150	Largest
241	18	151	2	109	Largest
241	18	151	2	107	Largest
242	4	152	5	7	Small
242	4	152	5	12	Small
243	4	153	5	121	Small
243	4	153	5	151	Small
243	4	153	5	12	Small
243	4	153	5	9	Small
244	5	6	3	149	Smallest
245	5	6	2	149	Small
246	13	97	2	152	Small
247	1	50	5	71	Small
247	1	50	5	25	Large
247	1	50	5	68	Medium
247	1	50	5	153	Medium
247	1	50	5	124	Large
247	1	50	5	149	Medium
248	6	154	4	41	Small
249	13	49	2	33	Largest
249	13	49	2	125	Medium
249	13	49	2	57	Large
249	13	49	2	62	Medium
249	13	49	2	154	Large
250	3	155	28	17	Smallest
251	9	125	6	4	Medium
252	5	6	29	155	Smallest
253	9	75	6	90	Medium
254	18	95	22	107	Medium
254	18	95	22	156	Large
254	18	95	22	157	Medium
254	18	95	22	50	Medium
255	3	9	3	19	Smallest
255	3	9	3	71	Smallest
256	3	9	3	19	Smallest
257	4	5	4	29	Small
258	20	156	2	69	Smallest
259	4	5	4	54	Medium
259	4	5	4	8	Medium
259	4	5	4	52	Medium
259	4	5	4	5	Medium
259	4	5	4	9	Medium
260	3	9	3	71	Smallest
260	3	9	3	19	Medium
261	3	9	3	19	Smallest
261	3	9	3	71	Smallest
262	13	17	2	158	Largest
263	3	3	3	4	Medium
263	3	3	3	2	Medium
264	18	157	9	44	Smallest
265	3	62	6	88	Smallest
265	3	62	6	4	Smallest
266	5	158	30	149	Smallest
267	3	9	3	19	Smallest
268	1	74	5	103	Small
269	1	159	5	159	Small
269	1	159	5	160	Small
270	20	160	2	82	Small
270	20	160	2	161	Medium
270	20	160	2	162	Small
270	20	160	2	163	Smallest
271	20	161	2	164	Large
271	20	161	2	162	Largest
271	20	161	2	165	Largest
271	20	161	2	166	Largest
271	20	161	2	167	Largest
272	2	2	2	161	Small
273	3	162	31	4	Small
274	17	163	2	85	Smallest
275	2	164	2	2	Smallest
276	2	165	2	129	Smallest
276	2	165	2	2	Small
277	2	164	2	2	Smallest
278	2	2	2	49	Medium
278	2	2	2	85	Large
278	2	2	2	73	Large
278	2	2	2	168	Large
278	2	2	2	3	Large
278	2	2	2	95	Large
279	5	6	2	169	Largest
279	5	6	2	166	Largest
279	5	6	2	170	Largest
279	5	6	2	113	Largest
279	5	6	2	35	Largest
280	11	81	20	31	Smallest
281	13	17	32	33	Smallest
282	12	166	2	171	Largest
282	12	166	2	15	Largest
282	12	166	2	58	Largest
282	12	166	2	52	Largest
282	12	166	2	172	Medium
283	9	167	33	173	Medium
283	9	167	33	155	Smallest
283	9	167	33	2	Medium
283	9	167	33	71	Large
283	9	167	33	174	Medium
284	9	3	3	4	Small
285	5	6	2	175	Medium
286	1	168	5	47	Large
286	1	168	5	76	Large
287	5	6	2	176	Largest
287	5	6	2	124	Largest
287	5	6	2	107	Largest
287	5	6	2	177	Medium
287	5	6	2	178	Largest
288	13	169	5	159	Smallest
289	13	169	5	159	Small
290	18	170	2	44	Largest
291	4	171	4	122	Smallest
292	7	172	5	12	Smallest
293	18	173	11	140	Smallest
294	1	174	25	84	Smallest
295	2	175	2	36	Smallest
296	13	169	2	84	Smallest
297	13	169	2	159	Smallest
297	13	169	2	84	Smallest
298	13	169	2	179	Smallest
299	13	169	2	25	Medium
299	13	169	2	159	Medium
300	1	176	2	36	Medium
300	1	176	2	5	Medium
300	1	176	2	84	Smallest
300	1	176	2	110	Smallest
301	1	177	2	46	Medium
302	11	81	20	180	Smallest
302	11	81	20	55	Smallest
302	11	81	20	85	Small
303	1	178	1	1	Small
304	4	130	4	122	Smallest
305	13	179	2	125	Small
306	7	180	5	2	Smallest
307	3	181	6	63	Smallest
308	3	182	3	181	Smallest
309	13	31	6	19	Smallest
310	4	5	34	55	Smallest
311	13	63	2	25	Smallest
312	18	183	2	97	Medium
313	18	184	17	85	Small
313	18	184	17	182	Small
314	13	179	2	125	Small
315	13	17	32	138	Medium
315	13	17	32	183	Medium
316	11	81	20	184	Smallest
316	11	81	20	180	Small
316	11	81	20	93	Smallest
316	11	81	20	73	Smallest
317	1	64	11	44	Smallest
317	1	64	11	74	Small
318	17	185	11	110	Smallest
319	3	186	6	4	Small
319	3	186	6	63	Smallest
319	3	186	6	42	Smallest
320	3	3	3	4	Smallest
321	13	146	2	66	Smallest
322	4	187	12	5	Smallest
323	17	188	11	65	Small
323	17	188	11	90	Smallest
324	13	31	6	4	Smallest
325	9	189	17	22	Small
326	13	31	6	19	Smallest
327	9	12	6	4	Small
327	9	12	6	2	Small
328	3	190	35	15	Small
328	3	190	35	53	Medium
329	13	35	2	185	Smallest
330	16	191	4	18	Medium
330	16	191	4	12	Smallest
331	4	192	4	18	Small
332	3	9	3	19	Smallest
333	10	193	4	14	Small
333	10	193	4	112	Small
334	16	194	4	69	Smallest
335	4	195	4	61	Smallest
336	16	196	4	186	Smallest
337	13	17	32	33	Small
338	2	15	2	2	Medium
338	2	15	2	119	Medium
339	13	17	2	43	Medium
340	13	17	6	23	Smallest
341	4	197	12	5	Small
342	9	198	27	187	Large
342	9	198	27	188	Largest
342	9	198	27	53	Medium
342	9	198	27	129	Medium
342	9	198	27	90	Largest
343	17	199	27	129	Small
343	17	199	27	44	Small
344	16	200	4	21	Smallest
345	4	201	12	5	Smallest
346	4	195	12	61	Small
347	4	202	4	61	Small
348	4	202	4	61	Small
349	13	31	6	22	Smallest
350	5	203	36	97	Smallest
351	11	204	15	135	Smallest
352	4	205	12	22	Smallest
353	1	206	2	189	Small
353	1	206	2	110	Smallest
354	13	61	6	86	Smallest
355	13	207	6	4	Smallest
356	17	208	11	85	Small
357	13	209	6	55	Small
358	3	186	6	4	Smallest
358	3	186	6	63	Smallest
359	5	210	37	190	Smallest
360	16	29	4	48	Smallest
361	3	211	31	130	Small
361	3	211	31	4	Small
362	4	8	4	191	Smallest
363	20	212	2	17	Smallest
363	20	212	2	41	Small
364	1	213	25	2	Smallest
365	18	214	2	192	Medium
365	18	214	2	41	Smallest
365	18	214	2	71	Medium
366	5	215	38	193	Medium
366	5	215	38	194	Medium
366	5	215	38	195	Medium
366	5	215	38	196	Medium
366	5	215	38	116	Medium
366	5	215	38	35	Medium
366	5	215	38	197	Medium
366	5	215	38	147	Medium
367	5	6	38	198	Large
368	1	25	9	47	Smallest
369	4	195	2	61	Medium
370	7	216	5	2	Small
371	7	217	5	25	Smallest
372	2	218	2	190	Small
373	4	219	4	22	Smallest
374	13	39	6	4	Small
375	13	220	6	4	Smallest
376	16	191	4	12	Smallest
377	20	221	2	137	Small
377	20	221	2	193	Small
377	20	221	2	109	Small
378	20	151	2	77	Medium
378	20	151	2	68	Medium
379	13	31	6	199	Smallest
379	13	31	6	57	Small
379	13	31	6	19	Small
380	4	195	12	61	Smallest
381	2	222	2	190	Small
382	13	17	6	33	Smallest
383	2	223	2	8	Small
384	8	121	2	200	Medium
385	16	224	4	15	Small
386	16	224	4	12	Small
387	2	2	2	3	Small
387	2	2	2	198	Small
388	10	78	4	201	Small
389	12	225	4	99	Medium
389	12	225	4	130	Medium
390	5	6	39	202	Smallest
391	10	134	21	12	Smallest
392	13	226	2	203	Smallest
393	8	227	2	69	Smallest
394	2	228	2	43	Small
394	2	228	2	49	Small
394	2	228	2	204	Small
394	2	228	2	205	Smallest
395	2	229	2	173	Small
396	3	3	3	2	Smallest
396	3	3	3	4	Smallest
397	13	31	6	19	Small
398	3	9	3	19	Smallest
399	4	4	12	73	Smallest
400	13	49	2	19	Small
400	13	49	2	33	Medium
401	3	3	3	2	Smallest
401	3	3	3	4	Smallest
402	10	230	3	18	Smallest
402	10	230	3	31	Smallest
402	10	230	3	137	Small
403	3	231	3	4	Small
403	3	231	3	34	Small
404	13	17	32	138	Medium
404	13	17	32	206	Medium
404	13	17	32	207	Medium
404	13	17	32	208	Medium
405	2	232	5	2	Medium
406	11	233	20	73	Small
406	11	233	20	37	Small
406	11	233	20	55	Small
406	11	233	20	209	Small
406	11	233	20	210	Small
407	3	3	3	4	Smallest
408	3	3	3	4	Small
409	13	31	6	86	Small
410	9	125	6	211	Large
410	9	125	6	212	Large
410	9	125	6	169	Small
410	9	125	6	34	Largest
410	9	125	6	90	Largest
410	9	125	6	4	Largest
410	9	125	6	93	Largest
411	4	195	12	61	Small
412	4	171	12	5	Medium
412	4	171	12	52	Small
412	4	171	12	12	Medium
413	4	143	4	191	Smallest
414	3	3	3	4	Smallest
415	4	234	12	12	Medium
415	4	234	12	54	Medium
415	4	234	12	51	Small
415	4	234	12	5	Medium
416	4	235	12	61	Smallest
417	14	236	40	69	Smallest
418	3	9	3	2	Smallest
418	3	9	3	19	Smallest
419	13	17	2	56	Medium
419	13	17	2	213	Small
419	13	17	2	62	Smallest
420	2	2	2	214	Small
421	4	237	12	5	Smallest
422	13	48	6	22	Smallest
423	21	238	3	14	Smallest
424	12	239	2	123	Smallest
425	13	17	2	146	Medium
426	7	127	41	123	Smallest
427	5	6	38	111	Medium
428	10	240	2	58	Smallest
429	11	14	8	8	Smallest
429	11	14	8	31	Smallest
430	13	226	2	215	Smallest
431	11	14	8	31	Smallest
432	16	29	4	49	Small
433	13	51	6	90	Small
434	13	35	2	216	Small
435	4	241	12	61	Smallest
435	4	241	12	55	Smallest
435	4	241	12	48	Small
436	11	14	2	31	Largest
436	11	14	2	99	Largest
436	11	14	2	73	Largest
436	11	14	2	93	Largest
436	11	14	2	106	Large
436	11	14	2	134	Largest
437	3	242	28	130	Smallest
438	3	3	3	4	Small
439	1	243	25	85	Smallest
440	11	14	8	93	Smallest
441	11	14	8	37	Medium
441	11	14	8	99	Small
441	11	14	8	106	Small
441	11	14	8	73	Small
441	11	14	8	31	Medium
441	11	14	8	93	Small
442	5	215	18	64	Small
443	5	6	38	217	Medium
443	5	6	38	218	Medium
444	5	6	42	30	Smallest
445	18	244	2	86	Smallest
445	18	244	2	25	Small
446	2	2	2	2	Small
446	2	2	2	219	Small
447	3	186	35	88	Smallest
448	16	224	4	12	Smallest
449	9	75	17	22	Smallest
450	5	6	38	220	Medium
451	2	245	2	2	Small
451	2	245	2	38	Small
452	12	246	2	12	Smallest
453	7	247	5	2	Medium
453	7	247	5	103	Medium
453	7	247	5	169	Small
454	7	149	5	47	Small
454	7	149	5	84	Small
454	7	149	5	119	Smallest
455	4	237	4	7	Smallest
455	4	237	4	8	Small
455	4	237	4	221	Small
455	4	237	4	12	Small
456	19	248	3	222	Smallest
457	13	39	6	22	Smallest
458	13	17	35	55	Smallest
459	16	249	4	46	Smallest
460	15	250	3	187	Smallest
461	13	31	6	22	Smallest
462	13	17	2	33	Small
463	11	14	29	93	Medium
463	11	14	29	214	Medium
463	11	14	29	73	Small
463	11	14	29	31	Medium
463	11	14	29	37	Medium
463	11	14	29	106	Small
464	13	31	6	86	Smallest
465	11	251	15	223	Smallest
466	5	210	2	34	Largest
467	21	252	3	14	Smallest
468	5	6	19	34	Smallest
469	6	253	4	42	Smallest
469	6	253	4	7	Smallest
470	2	2	2	3	Medium
470	2	2	2	109	Medium
470	2	2	2	73	Large
470	2	2	2	169	Small
471	13	254	5	154	Smallest
472	13	39	2	22	Medium
472	13	39	2	53	Small
472	13	39	2	15	Small
472	13	39	2	38	Medium
473	15	250	2	32	Medium
474	13	39	6	22	Medium
475	5	65	2	129	Medium
476	4	5	2	54	Large
477	9	75	6	109	Small
478	13	80	2	46	Medium
479	2	2	2	38	Small
479	2	2	2	137	Small
480	8	121	2	222	Smallest
481	1	255	5	116	Medium
481	1	255	5	103	Large
481	1	255	5	41	Medium
481	1	255	5	2	Medium
481	1	255	5	96	Small
482	9	75	6	90	Medium
483	9	75	6	34	Medium
483	9	75	6	85	Medium
484	6	256	4	12	Smallest
485	3	257	31	4	Small
486	20	258	2	224	Small
486	20	258	2	116	Smallest
486	20	258	2	103	Medium
487	7	96	43	46	Smallest
488	13	31	6	4	Small
489	10	259	21	69	Smallest
490	2	260	2	26	Small
491	13	17	2	225	Small
492	5	215	38	109	Smallest
492	5	215	38	68	Smallest
493	9	167	33	111	Smallest
494	10	261	5	12	Small
495	16	262	4	14	Smallest
496	18	263	2	44	Smallest
497	11	14	8	37	Small
497	11	14	8	31	Small
498	11	14	44	73	Smallest
499	3	62	6	63	Smallest
500	13	63	2	15	Large
500	13	63	2	22	Large
501	8	264	2	78	Medium
502	21	265	3	69	Smallest
503	3	3	3	4	Smallest
504	13	266	2	138	Small
504	13	266	2	106	Small
505	3	9	3	19	Small
506	4	53	4	72	Smallest
507	11	267	2	15	Medium
508	11	267	2	15	Medium
509	3	9	3	19	Smallest
509	3	9	3	71	Smallest
510	11	14	45	106	Smallest
511	12	268	2	15	Smallest
512	14	142	2	148	Small
512	14	142	2	193	Small
513	13	269	2	226	Medium
513	13	269	2	46	Small
513	13	269	2	125	Small
514	13	226	2	55	Medium
514	13	226	2	159	Medium
514	13	226	2	116	Small
514	13	226	2	25	Medium
515	14	270	14	19	Small
515	14	270	14	129	Smallest
516	14	270	2	74	Medium
516	14	270	2	22	Medium
517	3	9	2	71	Medium
517	3	9	2	19	Largest
518	2	271	2	97	Smallest
519	19	272	2	14	Smallest
520	13	17	6	227	Smallest
521	18	273	2	60	Large
521	18	273	2	184	Medium
521	18	273	2	228	Large
521	18	273	2	193	Large
521	18	273	2	93	Small
521	18	273	2	71	Medium
522	2	274	2	229	Medium
522	2	274	2	22	Medium
523	11	81	20	153	Smallest
524	2	275	2	55	Medium
524	2	275	2	116	Smallest
524	2	275	2	8	Medium
524	2	275	2	186	Medium
525	13	35	2	46	Smallest
526	12	6	7	26	Smallest
527	12	6	2	37	Largest
527	12	6	2	94	Large
527	12	6	2	73	Largest
527	12	6	2	38	Largest
527	12	6	2	109	Largest
527	12	6	2	36	Large
527	12	6	2	156	Large
528	2	2	2	3	Smallest
529	2	2	2	223	Smallest
530	2	2	2	57	Smallest
531	2	2	2	108	Small
532	2	2	2	49	Medium
533	2	2	2	230	Smallest
534	2	2	2	186	Small
534	2	2	2	231	Small
535	2	2	2	145	Medium
536	2	2	2	232	Smallest
537	13	146	2	25	Medium
537	13	146	2	57	Medium
537	13	146	2	158	Medium
537	13	146	2	56	Large
537	13	146	2	71	Smallest
538	13	17	6	55	Smallest
539	11	81	20	37	Smallest
540	11	276	20	128	Small
541	5	65	2	26	Medium
542	5	6	38	214	Large
543	3	277	6	88	Smallest
543	3	277	6	4	Smallest
544	13	278	6	22	Large
545	13	48	2	142	Small
546	13	226	2	26	Smallest
547	2	279	2	36	Medium
547	2	279	2	38	Small
548	18	280	2	86	Medium
548	18	280	2	38	Medium
548	18	280	2	149	Medium
549	8	281	2	65	Smallest
550	17	41	2	185	Smallest
550	17	41	2	233	Smallest
551	18	170	2	44	Largest
551	18	170	2	234	Large
551	18	170	2	185	Large
551	18	170	2	235	Small
551	18	170	2	26	Large
551	18	170	2	236	Medium
552	18	282	2	71	Small
552	18	282	2	237	Small
552	18	282	2	109	Smallest
552	18	282	2	144	Small
553	20	283	22	93	Smallest
554	22	284	3	14	Smallest
555	13	31	6	4	Smallest
556	13	80	2	46	Medium
557	16	285	4	69	Smallest
558	13	226	2	238	Smallest
559	13	17	6	33	Smallest
560	13	49	2	142	Medium
560	13	49	2	225	Medium
561	13	49	2	55	Smallest
562	13	269	2	25	Small
563	14	286	2	138	Smallest
564	3	3	3	4	Smallest
564	3	3	3	2	Smallest
565	20	57	2	32	Small
565	20	57	2	239	Small
566	20	57	2	42	Smallest
567	13	31	6	22	Smallest
567	13	31	6	15	Small
568	13	17	6	15	Smallest
569	4	287	4	12	Small
569	4	287	4	5	Small
570	2	288	2	112	Medium
570	2	288	2	240	Medium
570	2	288	2	63	Medium
571	4	171	4	12	Medium
571	4	171	4	72	Medium
572	10	289	2	14	Smallest
573	3	186	31	63	Smallest
573	3	186	31	88	Smallest
573	3	186	31	4	Smallest
574	9	75	6	90	Medium
574	9	75	6	34	Medium
575	1	290	1	1	Smallest
576	13	105	6	86	Small
577	13	39	6	241	Smallest
577	13	39	6	4	Medium
577	13	39	6	15	Smallest
578	13	35	2	185	Smallest
578	13	35	2	107	Smallest
579	5	6	38	242	Medium
580	10	291	4	21	Smallest
581	14	108	46	31	Smallest
582	13	41	2	185	Small
582	13	41	2	85	Smallest
583	16	29	4	48	Small
584	9	75	6	90	Medium
585	2	2	2	49	Small
585	2	2	2	110	Medium
585	2	2	2	3	Large
585	2	2	2	243	Medium
585	2	2	2	38	Small
585	2	2	2	135	Small
586	4	219	2	61	Small
586	4	219	2	120	Small
587	11	14	45	117	Smallest
588	13	17	6	2	Smallest
589	18	292	2	60	Smallest
590	13	35	2	4	Small
590	13	35	2	62	Smallest
590	13	35	2	25	Small
591	3	293	2	69	Smallest
592	13	294	2	9	Medium
592	13	294	2	212	Small
592	13	294	2	138	Small
593	7	109	5	2	Smallest
594	18	295	2	60	Small
594	18	295	2	41	Small
594	18	295	2	2	Small
594	18	295	2	119	Small
595	18	137	2	244	Small
595	18	137	2	38	Smallest
595	18	137	2	71	Small
596	10	296	5	12	Small
597	4	297	47	53	Small
597	4	297	47	12	Smallest
598	4	298	12	130	Large
598	4	298	12	30	Small
599	1	74	2	69	Smallest
600	6	299	2	14	Medium
601	1	300	5	103	Large
601	1	300	5	74	Large
602	2	2	2	111	Small
603	5	6	2	71	Largest
603	5	6	2	73	Largest
604	14	286	2	95	Smallest
605	13	294	2	245	Medium
606	13	294	3	24	Smallest
607	13	294	32	246	Small
607	13	294	32	138	Small
608	12	301	2	247	Small
609	12	302	2	58	Medium
610	12	302	2	58	Medium
611	7	99	5	186	Small
612	3	3	3	2	Small
612	3	3	3	4	Medium
613	13	31	6	4	Small
614	4	303	12	5	Small
614	4	303	12	73	Small
615	1	304	25	85	Smallest
616	8	121	2	71	Large
617	10	305	4	57	Small
617	10	305	4	7	Smallest
617	10	305	4	12	Small
618	6	306	4	69	Smallest
619	20	307	2	93	Medium
619	20	307	2	42	Medium
619	20	307	2	116	Smallest
620	8	308	2	14	Medium
621	13	48	2	29	Medium
621	13	48	2	142	Medium
621	13	48	2	71	Small
621	13	48	2	46	Large
621	13	48	2	2	Medium
622	1	255	5	248	Small
622	1	255	5	64	Small
623	1	309	5	110	Medium
623	1	309	5	249	Medium
623	1	309	5	36	Medium
624	13	17	5	89	Small
625	3	9	3	122	Medium
625	3	9	3	71	Medium
625	3	9	3	55	Medium
625	3	9	3	57	Large
625	3	9	3	19	Largest
625	3	9	3	23	Medium
626	9	75	6	3	Large
626	9	75	6	90	Medium
626	9	75	6	233	Medium
627	9	125	6	93	Medium
627	9	125	6	90	Large
628	17	310	2	84	Medium
628	17	310	2	65	Medium
629	13	39	6	38	Smallest
629	13	39	6	19	Medium
630	13	17	32	227	Medium
630	13	17	32	62	Small
630	13	17	32	111	Medium
630	13	17	32	57	Medium
631	13	80	2	22	Smallest
632	13	17	6	28	Smallest
633	7	311	5	2	Smallest
634	7	247	5	2	Small
635	18	178	11	109	Small
635	18	178	11	43	Small
636	3	37	3	19	Smallest
637	19	248	3	222	Smallest
638	12	312	24	250	Small
639	3	114	6	63	Smallest
640	13	17	32	57	Small
640	13	17	32	33	Large
640	13	17	32	251	Medium
641	4	313	4	141	Small
642	4	219	4	61	Small
642	4	219	4	55	Smallest
642	4	219	4	48	Smallest
643	9	314	6	34	Small
643	9	314	6	41	Small
644	11	14	45	31	Smallest
645	3	315	3	69	Smallest
646	3	316	31	252	Small
646	3	316	31	82	Small
646	3	316	31	4	Medium
646	3	316	31	104	Small
647	13	31	6	15	Smallest
647	13	31	6	22	Smallest
648	13	39	2	22	Small
649	9	12	6	4	Medium
649	9	12	6	15	Small
649	9	12	6	19	Medium
649	9	12	6	240	Small
649	9	12	6	143	Smallest
649	9	12	6	253	Small
650	10	317	5	6	Small
651	10	133	5	181	Small
651	10	133	5	6	Small
652	4	5	4	15	Smallest
653	11	14	8	37	Smallest
653	11	14	8	30	Small
654	12	318	2	147	Small
655	19	248	2	14	Smallest
656	13	31	6	4	Smallest
657	10	291	4	12	Smallest
658	22	319	3	69	Smallest
659	3	3	3	4	Smallest
660	2	320	2	160	Medium
660	2	320	2	85	Medium
660	2	320	2	204	Medium
660	2	320	2	49	Small
660	2	320	2	38	Medium
661	12	318	2	147	Large
661	12	318	2	171	Small
661	12	318	2	123	Largest
661	12	318	2	95	Largest
662	13	51	6	22	Smallest
663	11	14	8	157	Small
664	13	31	6	22	Smallest
665	6	321	4	69	Smallest
666	7	297	5	12	Small
667	13	17	32	225	Smallest
668	10	77	4	12	Smallest
669	7	322	5	2	Small
670	7	323	5	25	Smallest
671	1	60	11	74	Medium
671	1	60	11	86	Medium
671	1	60	11	44	Medium
671	1	60	11	137	Small
672	17	324	11	85	Smallest
673	1	325	5	254	Small
674	2	2	2	190	Small
675	18	184	11	44	Smallest
676	4	8	4	61	Small
676	4	8	4	130	Large
676	4	8	4	8	Small
676	4	8	4	123	Medium
677	11	81	20	93	Smallest
677	11	81	20	74	Smallest
678	11	14	20	31	Smallest
679	9	12	6	86	Medium
680	18	326	2	255	Medium
680	18	326	2	142	Smallest
680	18	326	2	71	Small
680	18	326	2	256	Medium
680	18	326	2	44	Medium
680	18	326	2	109	Small
681	20	327	2	116	Medium
682	16	192	4	14	Smallest
683	5	6	38	257	Medium
684	13	35	2	118	Medium
684	13	35	2	22	Large
684	13	35	2	61	Medium
684	13	35	2	57	Large
684	13	35	2	55	Large
684	13	35	2	15	Large
685	4	5	4	230	Small
686	14	328	2	22	Small
687	9	329	11	90	Smallest
687	9	329	11	44	Small
688	17	330	11	258	Medium
688	17	330	11	84	Small
688	17	330	11	85	Large
689	4	43	12	61	Small
690	2	2	2	116	Smallest
691	14	331	2	22	Medium
692	3	332	35	4	Medium
692	3	332	35	36	Medium
692	3	332	35	85	Medium
692	3	332	35	48	Medium
693	12	333	2	123	Medium
694	12	6	2	5	Small
695	18	157	11	44	Smallest
696	3	62	35	4	Smallest
696	3	62	35	63	Smallest
696	3	62	35	88	Smallest
697	13	334	2	85	Smallest
698	4	8	4	121	Smallest
699	8	118	2	116	Smallest
700	13	31	6	22	Smallest
701	3	9	3	19	Smallest
702	20	57	2	155	Smallest
703	9	75	6	93	Medium
703	9	75	6	34	Medium
703	9	75	6	90	Large
704	19	335	3	69	Smallest
705	1	336	2	111	Medium
705	1	336	2	189	Large
705	1	336	2	86	Small
705	1	336	2	76	Smallest
705	1	336	2	137	Small
706	8	264	2	76	Smallest
707	5	6	37	155	Smallest
708	4	337	4	7	Small
708	4	337	4	12	Medium
708	4	337	4	6	Medium
709	6	338	4	14	Smallest
710	3	9	3	19	Smallest
711	18	64	11	259	Smallest
712	16	29	4	48	Small
713	1	339	5	135	Small
713	1	339	5	103	Large
713	1	339	5	118	Medium
714	1	340	5	107	Medium
715	18	151	2	124	Small
715	18	151	2	29	Small
715	18	151	2	36	Largest
715	18	151	2	42	Medium
715	18	151	2	140	Largest
716	13	31	6	19	Smallest
717	4	341	4	5	Medium
717	4	341	4	9	Small
717	4	341	4	46	Medium
717	4	341	4	51	Medium
718	9	75	6	90	Small
719	11	14	8	157	Small
720	7	127	48	15	Smallest
721	11	14	8	157	Small
721	11	14	8	260	Small
721	11	14	8	106	Smallest
721	11	14	8	31	Smallest
721	11	14	8	37	Smallest
722	4	342	47	130	Smallest
723	1	290	2	42	Smallest
724	13	226	2	45	Smallest
725	6	338	4	14	Smallest
726	7	343	5	2	Smallest
727	9	12	6	22	Medium
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, country) FROM stdin;
1	Turkey,\nRussia
2	Italy
3	Indonesia
4	Ivory Coast
5	Nigeria
6	United States
7	South Africa,\nZimbabwe
8	Ghana
9	Philippines
10	Algeria,\nEgypt
11	France
12	China,\nIndia
13	Ethiopia
14	Mexico
15	Greece
16	Antigua and Barbuda
17	India
18	Ghana,\nIvory Coast
19	Argentina
20	Romania,\nGreece,\nAlbania
21	Iraq,\nSyria
22	Spain,\nPortugal
23	Australia
24	Austria
25	Russia,\nAzerbaijan
26	India,\nIran
27	Bolivia
28	Azerbaijan,\nRussia
29	Cameroon
30	Bahamas
31	Nepal
32	Senegal
33	North Macedonia,\nSerbia
34	Pakistan,\nIran
35	Pakistan,\nIndia
36	Mali,\nIvory Coast
37	Philippines,\nMalaysia
38	Indonesia,\nMalaysia
39	Nepal,\nIndia
40	Barbados
41	Tajikistan,\nAfghanistan
42	Spain,\nFrance
43	Liberia,\nSierra Leone
44	Austria,\nGermany
45	Belarus,\nPoland
46	Belize
47	Zambia,\nD.R. Congo
48	Bangladesh,\nIndia
49	India,\nNepal
50	Israel
51	India,\nBangladesh
52	Vanuatu,\nNew Caledonia
53	Mali,\nBurkina Faso
54	Bosnia and Herzegovina,\nSerbia
55	Brazil
56	Costa Rica
57	United Kingdom
58	Israel,\nUnited States,\nUzbekistan
59	Bulgaria,\nTurkey
60	Turkey,\nBulgaria
61	Bhutan
62	Myanmar
63	Pakistan
64	Russia
65	Canada
66	China,\nHong Kong
67	Cape Verde Islands
68	Suriname,\nTrinidad and Tobago,\nGuyana
69	Spain
70	Honduras,\nGuatemala,\nEl Salvador,\nNicaragua,\nCosta Rica
71	Chad
72	Bangladesh,\nMyanmar
73	China,\nMongolia
74	Iraq
75	China
76	Algeria,\nTunisia
77	Malawi,\nZambia
78	Uganda
79	Chile
80	Bangladesh
81	Guatemala
82	Micronesia
83	Egypt,\nYemen
84	Armenia
85	Colombia
86	Comoros
87	Egypt,\nSudan
88	Ukraine,\nTurkey,\nUzbekistan
89	Croatia,\nSlovenia
90	Cuba
91	Cyprus,\nGreece
92	Cyprus,\nTurkey
93	Czech Republic,\nSlovakia
94	Denmark,\nSweden
95	Hungary,\nRomania
96	Sudan
97	Afghanistan,\nPakistan
98	Maldives,\nIndia
99	Sudan,\nSouth Sudan
100	Dominica
101	Dominican Republic
102	Kyrgyzstan,\nKazakhstan
103	Netherlands,\nBelgium
104	Ivory Coast,\nBurkina Faso
105	Bhutan,\nIndia
106	Armenia,\nRussia
107	Vatican City
108	Ecuador
109	Egypt
110	Egypt,\nIsrael
111	Brazil,\nFrance
112	Estonia
113	Ghana,\nTogo
114	Myanmar,\nIndia
115	Equatorial Guinea,\nGabon
116	Fiji
117	Finland,\nSweden
118	Belgium
119	Benin,\nTogo
120	Ghana,\nBurkina Faso
121	Germany
122	France,\nSenegal
123	French Guiana
124	Netherlands
125	China,\nTaiwan
126	Guinea,\nSenegal
127	Sudan,\nChad
128	Honduras,\nBelize,\nGuatemala
129	Albania,\nKosovo,\nMontenegro,\nNorth Macedonia
130	Togo,\nBenin
131	Georgia,\nTurkey
132	Germany,\nAustria,\nSwitzerland
133	Ethiopia,\nEritrea
134	Kenya,\nTanzania
135	Kiribati
136	Ivory Coast,\nLiberia
137	Slovenia
138	Burkina Faso,\nTogo
139	Greece,\nCyprus
140	Grenada
141	Guadeloupe,\nFrance
142	Paraguay
143	Guinea-Bissau,\nSenegal
144	Kuwait,\nUnited Arab Emirates,\nSaudi Arabia
145	Benin,\nNigeria
146	India,\nPakistan
147	Guyana
148	Haiti,\nDominican Republic
149	Morocco,\nIsrael
150	China,\nSouth Korea,\nNorth Korea
151	United States,\nIsrael
152	Mauritania
153	Nigeria,\nNiger
154	Namibia,\nBotswana
155	Vietnam,\nChina
156	Iceland
157	Russia,\nKazakhstan
158	Canada,\nGreenland
159	Iraq,\nIsrael
160	Ireland,\nUnited Kingdom
161	Ireland,\nUnited States
162	Thailand
163	Afghanistan,\nTajikistan
164	Croatia,\nItaly
165	Croatia
166	Jamaica
167	Japan
168	Israel,\nUnited States
169	Iran,\nIsrael
170	Russia,\nUkraine
171	Senegal,\nGambia
172	South Sudan
173	Ukraine,\nRussia
174	Georgia,\nIsrael
175	Greece,\nIsrael
176	Turkey,\nIsrael
177	Azerbaijan,\nRussia,\nIsrael
178	Russia,\nTurkey
179	Afghanistan
180	Algeria
181	Myanmar,\nChina
182	Malaysia
183	Romania,\nUkraine
184	Russia,\nMongolia
185	Uzbekistan
186	Myanmar,\nThailand
187	Mali,\nSenegal
188	Kazakhstan,\nChina
189	Mongolia,\nRussia
190	Cambodia,\nVietnam
191	D.R. Congo,\nCongo (Brazzaville)
192	Angola
193	Rwanda,\nUganda
194	Burundi
195	Liberia
196	Congo (Brazzaville)
197	Guinea,\nLiberia
198	South Korea,\nNorth Korea
199	Uzbekistan,\nRussia
200	Gabon,\nCongo (Brazzaville)
201	Guinea
202	Liberia,\nIvory Coast
203	Mexico,\nUnited States
204	Panama,\nColombia
205	Sierra Leone,\nGuinea
206	Syria,\nTurkey
207	China,\nNepal
208	Kyrgyzstan,\nChina
209	India,\nChina
210	United States,\nCanada
211	Laos,\nCambodia
212	Latvia
213	Turkey,\nGeorgia
214	Ukraine,\nPoland
215	Canada,\nUnited States
216	Libya,\nEgypt
217	Libya,\nIsrael
218	Italy,\nMonaco
219	Sierra Leone
220	Nepal,\nChina
221	Lithuania,\nPoland
222	Italy,\nSwitzerland
223	Romania
224	D.R. Congo
225	Cuba,\nDominican Republic
226	Iran
227	Luxembourg,\nFrance
228	North Macedonia,\nAlbania
229	Serbia
230	Madagascar
231	Malaysia,\nBrunei,\nSingapore
232	Malta
233	Guatemala,\nMexico
234	Guinea,\nIvory Coast
235	Liberia,\nGuinea
236	Chile,\nArgentina
237	Burkina Faso,\nMali
238	Marshall Islands
239	Martinique,\nFrance
240	Mauritius
241	Sierra Leone,\nLiberia
242	China,\nVietnam
243	Georgia
244	Moldova,\nRomania
245	Montenegro,\nSerbia
246	Montserrat
247	Morocco
248	Papua New Guinea
249	Gabon
250	New Zealand
251	Panama,\nCosta Rica
252	Nauru
253	Zimbabwe,\nBotswana
254	Iran,\nIraq
255	Syria,\nLebanon
256	Lesotho,\nSouth Africa
257	Thailand,\nLaos
258	Norway
259	South Sudan,\nEthiopia
260	Italy,\nFrance
261	Ethiopia,\nKenya
262	Angola,\nNamibia
263	Russia,\nSyria
264	Germany,\nFrance
265	Palau
266	Sri Lanka,\nThailand
267	Panama
268	Curaçao,\nAruba
269	Pakistan,\nAfghanistan
270	Peru
271	Italy,\nArgentina
272	Solomon Islands
273	Poland
274	Greece,\nTurkey
275	Portugal,\nBrazil
276	Guatemala,\nBelize
277	Myanmar,\nBangladesh
278	Nepal,\nIndia,\nChina
279	Hungary,\nRomania,\nUkraine
280	Romania,\nMoldova
281	Switzerland
282	Ukraine,\nSlovakia
283	Norway,\nSweden
284	Samoa,\nUnited States
285	Central African Republic
286	Suriname
287	Ivory Coast,\nMali
288	Serbia,\nBosnia and Herzegovina
289	Seychelles
290	Turkey
291	Zimbabwe,\nZambia
292	Poland,\nCzech Republic
293	Singapore
294	Sri Lanka
295	Slovakia,\nCzech Republic
296	Somalia,\nEthiopia
297	Mali,\nNiger
298	Mali,\nSenegal,\nGambia
299	South Africa
300	Israel,\nJordan
301	Saint Kitts and Nevis
302	Saint Lucia
303	Guinea,\nSierra Leone
304	Georgia,\nRussia
305	Tanzania,\nKenya
306	Eswatini,\nSouth Africa
307	Sweden,\nFinland
308	Switzerland,\nFrance
309	United States,\nIsrael,\nSyria
310	Tajikistan,\nUzbekistan
311	Morocco,\nAlgeria
312	United States,\nDominican Republic
313	Togo,\nGhana
314	China,\nThailand
315	Timor-Leste,\nIndonesia
316	Thailand,\nCambodia
317	Eritrea,\nSudan
318	Trinidad and Tobago
319	Tonga
320	Albania
321	Botswana,\nSouth Africa
322	Tunisia
323	Tunisia,\nIsrael
324	Turkmenistan,\nAfghanistan
325	Turkey,\nSweden
326	Ukraine
327	United Kingdom,\nIreland
328	Uruguay
329	China,\nKazakhstan
330	Uzbekistan,\nTajikistan
331	Venezuela
332	Vietnam,\nCambodia
333	Saint Vincent and the Grenadines
334	Pakistan,\nTajikistan
335	Vanuatu
336	Armenia,\nTurkey,\nLebanon
337	Senegal,\nMauritania
338	South Africa,\nLesotho
339	Yemen
340	Yemen,\nIsrael
341	Nigeria,\nBenin
342	Niger,\nNigeria
343	Libya
\.


--
-- Data for Name: language_families; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.language_families (id, language_family) FROM stdin;
1	Abkhaz-Adyge
2	Indo-European
3	Austronesian
4	Atlantic-Congo
5	Afro-Asiatic
6	Sino-Tibetan
7	
8	Otomanguean
9	Nakh-Daghestanian
10	Aymaran
11	Turkic
12	Mande
13	Basque
14	Quechuan
15	Chibchan
16	Burushaski
17	Mongolic
18	Iroquoian
19	Athabaskan-Eyak-Tlingit
20	Mayan
21	Nilotic
22	Uralic
23	Furan
24	Arawakan
25	Kartvelian
26	Tupian
27	Koreanic
28	Hmong-Mien
29	Uto-Aztecan
30	Eskimo-Aleut
31	Tai-Kadai
32	Dravidian
33	Japonic
34	Ijoid
35	Austroasiatic
36	Yuman
37	Siouan
38	Algic
39	Salish
40	Araucanian
41	Maban
42	Cochimi-Yuman
43	Nubian
44	Tarascan
45	Totonacan
46	Chicham
47	Songhay
48	Saharan
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.languages (id, language) FROM stdin;
1	Abaza
2	Abruzzese
3	Acehnese
4	Adjoukrou
5	Adyghe
6	Afenmai
7	African-American English
8	Afrikaans
9	Akan
10	Aklanon
11	Algerian Arabic
12	Alsatian
13	Amdo Tibetan
14	American Sign Language
15	Amharic
16	Amuzgo
17	Anaang
18	Ancient Greek
19	Antigua and Barbuda Creole
20	Ao
21	Appolo
22	Apulo-Lucano
23	Arbëresh
24	Argentine Spanish
25	Aromanian
26	Ashanti
27	Assamese
28	Assyrian Neo-Aramaic
29	Asturian
30	Australian English
31	Austrian German
32	Avar
33	Avestan
34	Aymara
35	Azeri
36	Bafut
37	Bahamian Creole
38	Bahing
39	Balanta-Ganja
40	Balinese
41	Balkan Romani
42	Balochi
43	Balti
44	Bambara
45	Banguingui
46	Banjarese
47	Bantawa
48	Baoulé
49	Baragaun
50	Barbadian Creole
51	Bartangi
52	Basaa
53	Basque
54	Bassa
55	Batak
56	Batak (Karo)
57	Batak (Toba)
58	Bavarian
59	Baïnounk
60	Belarusian
61	Belizean Creole
62	Bemba
63	Beneventano
64	Bengali
65	Betawi Malay
66	Bhojpuri
67	Biblical Hebrew
68	Bicolano
69	Bishnupriya Manipuri
70	Bislama
71	Bolivian Quechua
72	Bolivian Spanish
73	Bomu
74	Bontoc
75	Bosnian
76	Brazilian Portuguese
77	Breton
78	Bribri
79	British English
80	Buginese
81	Bukhori
82	Bulgarian
83	Bulgarian Turkish
84	Buli
85	Bumthang
86	Burmese
87	Burushaski
88	Buryat
89	Bzedukh
90	Bété
91	Calabrese
92	Calabrese (Gioiosano)
93	Calabrese (Sanfilese)
94	Cameroonian Pidgin English
95	Camfranglais
96	Canadian English
97	Cantonese
98	Cape Verdean Creole
99	Caribbean Hindustani
100	Castilian Spanish
101	Catalan
102	Cebuano
103	Central American Spanish
104	Central Malay
105	Chadian Arabic
106	Chak
107	Chakhar Mongolian
108	Chakma
109	Chaldean Neo-Aramaic
110	Chamling
111	Chamorro
112	Changki
113	Changzhounese
114	Chantyal
115	Chaouia
116	Chavacano
117	Chechen
118	Cherepon
119	Cherokee
120	Chewa
121	Chiga
122	Chilean Spanish
123	Chinantec
124	Chiricahua Apache
125	Chittagonian
126	Chocha-ngacha
127	Chuj
128	Church Slavonic
129	Chuukese
130	Chuvash
131	Cilentano
132	Classical Arabic
133	Classical Armenian
134	Classical Latin
135	Classical Tibetan
136	Colombian Spanish
137	Comorian
138	Coptic
139	Cretan Greek
140	Crimean Tatar
141	Croatian
142	Cuban Spanish
143	Cuicatec
144	Cypriot Greek
145	Cypriot Turkish
146	Czech
147	Dagaare
148	Dagbani
149	Dangme
150	Danish
151	Danube Swabian
152	Darfurian Arabic
153	Dari
154	Dawei Burmese
155	Dhivehi
156	Dinka
157	Dolpo
158	Dominican Creole (English)
159	Dominican Creole (French)
160	Dominican Spanish
161	Duala
162	Dungan
163	Dutch
164	Dyula
165	Dzongkha
166	Eastern Armenian
167	Ebrié
168	Ecclesiastical Latin
169	Ecuadorian Kichwa
170	Ecuadorian Spanish
171	Edo
172	Efik
173	Egyptian Arabic
174	Egyptian Judeo-Arabic
175	Emiliano
176	Esan
177	Esperanto
178	Estonian
179	Ewe
180	Ewondo
181	Falam Chin
182	Fang
183	Fante
184	Fe'fe'
185	Fijian
186	Finnish
187	Flemish
188	Fon
189	Frafra
190	Franconian
191	French
192	French Guianese Creole
193	Frisian
194	Friulian
195	Fujianese
196	Fulani
197	Fur
198	Ga
199	Gagnoa Bété
200	Galician
201	Gallo-Italic
202	Gan
203	Garifuna
204	Garo
205	Geg Albanian
206	Gen-Gbe
207	Georgian
208	German
209	Geʽez
210	Ghale
211	Ghanaian English
212	Ghomala
213	Gikuyu
214	Gilbertese
215	Gio
216	Gola
217	Gottscheerisch
218	Gourmanché
219	Greek
220	Grenadian Creole
221	Guadeloupean Creole
222	Guarani
223	Guiberoua Bété
224	Guinea-Bissau Creole
225	Gujarati
226	Gulf Arabic
227	Gullah
228	Gun-Gbe
229	Gurage
230	Gurjar
231	Guro
232	Gurung
233	Guyanese Creole
234	Gyalsumdo
235	Hainanese (Southern Min)
236	Haitian Creole
237	Haketia
238	Hakha Chin
239	Hakka
240	Hamgyŏng Korean (Joseonjok)
241	Hasidic Yiddish
242	Hassaniya Arabic
243	Hausa
244	Hawaiian
245	Hawaiian English
246	Hazara
247	Hebrew
248	Herero
249	Hindi
250	Hmong
251	Hokkien
252	Hopi
253	Hunanese
254	Hungarian
255	Ibaloy
256	Ibanag
257	Ibibio
258	Icelandic
259	Igbo
260	Ilocano
261	Ilonggo
262	Indian English
263	Indonesian
264	Ingush
265	Intha Burmese
266	Inuktun
267	Iranun
268	Iraqi Arabic
269	Iraqi Judeo-Arabic
270	Irish
271	Irish English
272	Irpino
273	Isan
274	Ishkashimi
275	Istrioto
276	Istro-Romanian
277	Istro-Veneto
278	Italian
279	Italian English
280	Ixil
281	Iyengar Tamil
282	Jamaican Patois
283	Japanese
284	Javanese
285	Jersey Dutch
286	Jewish Babylonian Aramaic
287	Jewish English
288	Jewish Neo-Aramaic (Bijar)
289	Jewish Neo-Aramaic (Urmia)
290	Jewish Russian
291	Jola
292	Juba Arabic
293	Judeo-Crimean Tatar
294	Judeo-Georgian
295	Judeo-Greek
296	Judeo-Hamadani
297	Judeo-Isfahani
298	Judeo-Kashani
299	Judeo-Shirazi
300	Judeo-Spanish
301	Juhuri
302	K'iche'
303	Kabardian
304	Kabiye
305	Kabli
306	Kabyle
307	Kachin
308	Kadazan Dusun
309	Kaike
310	Kalabari
311	Kalasha
312	Kalderash Romani
313	Kalmyk
314	Kandhari
315	Kannada
316	Kaqchikel
317	Karachay-Balkar
318	Karakalpak
319	Karen
320	Kariu
321	Kashmiri
322	Kassonke
323	Kazakh
324	Khaling
325	Khalkha Mongolian
326	Kham Magar
327	Kham Tibetan
328	Khmer
329	Khowar
330	Kikongo
331	Kimbundu
332	Kinaray-a
333	Kinyarwanda
334	Kirundi
335	Kissi
336	Kituba
337	Kodava
338	Koine Greek
339	Konkani
340	Konyak
341	Konyanka
342	Korean
343	Koryo-Mar
344	Kota
345	Koulounkalan
346	Kpelle
347	Krahn
348	Kru
349	Kulung
350	Kumeyaay
351	Kuna
352	Kuranko
353	Kurdish
354	Kurtöp
355	Kyirong
356	Kyrgyz
357	Ladakhi
358	Lahu
359	Lakota
360	Lamnso
361	Lao
362	Larteh
363	Latvian
364	Lazuri
365	Lemko
366	Lenape (Munsee)
367	Lenape (Unami)
368	Lezgi
369	Liberian English
370	Libyan Arabic
371	Libyan Judeo-Arabic
372	Ligurian
373	Limba
374	Limbu
375	Limi
376	Lingala
377	Lithuanian
378	Litvish Yiddish
379	Loke
380	Loma
381	Lombard
382	Lotha
383	Lovari Romani
384	Low German
385	Luba-Kasai
386	Luba-Katanga
387	Lucano
388	Luganda
389	Lukumí
390	Lummi
391	Luo
392	Luri
393	Luxembourgish
394	Macedonian
395	Machvaya Romani
396	Madurese
397	Magar
398	Maguindanao
399	Mahouka
400	Maithili
401	Makassarese
402	Malagasy
403	Malay
404	Malayalam
405	Maltese
406	Mam
407	Mamuju
408	Manado Malay
409	Manang
410	Mandarin Chinese
411	Mandingo
412	Mandinka
413	Mandjak
414	Manggarai
415	Maninka
416	Mano
417	Mapuche
418	Maranao
419	Marathi
420	Marchigiano
421	Marka
422	Marma
423	Marshallese
424	Martinican Creole
425	Marwari
426	Masalit
427	Matinecock
428	Mauritian Creole
429	Mazahua
430	Mazanderani
431	Mazatec
432	Medumba
433	Meitei
434	Memoni
435	Mende
436	Mexican Spanish
437	Mien
438	Minangkabau
439	Mingrelian
440	Mixe
441	Mixtec
442	Mohawk
443	Mohican
444	Mojave
445	Moldovan
446	Molisan
447	Mon
448	Mongo
449	Monguor
450	Montaukett
451	Montenegrin
452	Montserrat Creole
453	Moroccan Arabic
454	Moroccan Judeo-Arabic
455	Mossi
456	Motu
457	Mugu
458	Munda
459	Myene
460	Māori
461	Nachhiring
462	Nagamese
463	Nahuatl
464	Nar-Phu
465	Naso
466	Native American English
467	Nauruan
468	Navajo
469	Ndebele
470	Neapolitan
471	Neo-Mandaic
472	Nepali
473	New Zealand English
474	Newari
475	Newfoundland English
476	Nigerian English
477	Ningbo
478	Noakhailla
479	Nones
480	North Frisian
481	North Levantine Arabic
482	Northeastern Mandarin Chinese
483	Northern Fujianese
484	Northern Sotho
485	Northern Thai
486	Norwegian
487	Nubian
488	Nubri
489	Nuer
490	Occitan
491	Odia
492	Ojibwe
493	Okinawan
494	Oromo
495	Oshiwambo
496	Ossetian
497	Otomi
498	P'urhépecha
499	Pa'O
500	Pakistani English
501	Palatine German
502	Palauan
503	Palembang
504	Pali
505	Pampangan
506	Pana
507	Panamanian English
508	Panamanian Spanish
509	Pangasinan
510	Papantla Totonac
511	Papiamento
512	Paraguayan Spanish
513	Pashto
514	Persian
515	Peruvian Quechua
516	Peruvian Spanish
517	Philippine English
518	Piedmontese
519	Pijin
520	Pochury
521	Polish
522	Pontic Greek
523	Poqomchi'
524	Portuguese
525	Pothwari
526	Puerto Rican Sign Language
527	Puerto Rican Spanish
528	Pugliese (Barese)
529	Pugliese (Bitettese)
530	Pugliese (Casamassimese)
531	Pugliese (Conversanese)
532	Pugliese (Garganico)
533	Pugliese (Grumese)
534	Pugliese (Molese)
535	Pugliese (Molfettese)
536	Pugliese (Palese)
537	Punjabi
538	Purgi
539	Q'anjob'al
540	Q'eqchi'
541	Quebec French
542	Quiripi
543	Rakhine
544	Ramaluk
545	Rangpuri
546	Rashti
547	Romani
548	Romanian
549	Romansh
550	Rushani
551	Russian
552	Rusyn
553	Sami
554	Samoan
555	Sampang
556	Sandwippa
557	Sango
558	Sangsari
559	Sangtam
560	Sanskrit
561	Santali
562	Saraiki
563	Saramaccan Creole
564	Sasak
565	Scots
566	Scottish Gaelic
567	Seke
568	Sema
569	Senoufo
570	Serbian
571	Serer
572	Seychellois Creole
573	Shan
574	Shanghainese
575	Shapsug
576	Sharchop
577	Sherpa
578	Shina
579	Shinnecock
580	Shona
581	Shuar
582	Shughni
583	Shupamem
584	Sichuanese
585	Sicilian
586	Sierra Leone Creole
587	Sierra Totonac
588	Sikkimese
589	Silesian
590	Sindhi
591	Singlish
592	Sinhalese
593	Siwi
594	Slovak
595	Slovenian
596	Somali
597	Songhay
598	Soninke
599	Sorani Kurdish
600	South African English
601	South Levantine Arabic
602	Southern Lazio
603	Spanglish
604	Sranan Tongo
605	Sri Lankan English
606	Sri Lankan Malay
607	Sri Lankan Tamil
608	St. Kitts Creole
609	St. Lucian Creole (English)
610	St. Lucian Creole (French)
611	Sudanese Arabic
612	Sundanese
613	Sunwar
614	Susu
615	Svan
616	Swabian
617	Swahili
618	Swati
619	Swedish
620	Swiss German
621	Sylheti
622	Syriac
623	Syrian Judeo-Arabic
624	Syro-Malankara Syriac
625	Tagalog
626	Taishanese
627	Taiwanese
628	Tajik
629	Tamang
630	Tamil
631	Tanchangya
632	Tangkhul
633	Tarifit
634	Tashelhyt
635	Tatar
636	Tausug
637	Tawala
638	Taíno
639	Tedim Chin
640	Telugu
641	Tem
642	Temne
643	Teochew
644	Tepehua
645	Tetum
646	Thai
647	Thakali
648	Tharu
649	Tibetan
650	Tigre
651	Tigrinya
652	Tiv
653	Tlapanec
654	Tobagonian Creole
655	Tok Pisin
656	Tokpe Gola
657	Tonga
658	Tongan
659	Tontemboan
660	Tosk Albanian
661	Trinidadian Creole
662	Tripuri
663	Triqui
664	Tsum
665	Tswana
666	Tuareg
667	Tulu
668	Tumbuka
669	Tunisian Arabic
670	Tunisian Judeo-Arabic
671	Turkish
672	Turkmen
673	Turoyo Neo-Aramaic
674	Tuscan
675	Tuvan
676	Twi
677	Tz'utujil
678	Tzotzil
679	Tö Tibetan
680	Ukrainian
681	Ulster Scots
682	Umbundu
683	Unkechaug
684	Urdu
685	Urhobo
686	Uruguayan Spanish
687	Uyghur
688	Uzbek
689	Vai
690	Venetian
691	Venezuelan Spanish
692	Vietnamese
693	Vincentian Creole
694	Virgin Islands Creole
695	Volga Tatar
696	Wa
697	Wakhi
698	Wali
699	Walloon
700	Walung
701	Waray-Waray
702	Welsh
703	Wenzhounese
704	West Ambae
705	Western Armenian
706	Western Yiddish
707	Winnebago
708	Wolof
709	Xhosa
710	Yakan
711	Yakut
712	Yemba
713	Yemeni Arabic
714	Yemenite Judeo-Arabic
715	Yiddish
716	Yolmo
717	Yoruba
718	Yunnanese
719	Zacaptec Mixtec
720	Zaghawa
721	Zapotec
722	Zarma
723	Zaza
724	Zoroastrian Dari
725	Zulu
726	Zuwara
727	Ü-Tsang Tibetan
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locations (id, location) FROM stdin;
1	Wayne (NJ)
2	Astoria
3	Little Italy
4	Elmhurst
5	Concourse
6	Castle Hill
7	Bedford-Stuyvesant
8	Newark (NJ)
9	Clifton
10	Hollis
11	Edenwald
12	Central Harlem
13	Hempstead (NY)
14	Murray Hill
15	Flatbush
16	Shore Acres
17	University Heights
18	TriBeCa
19	Woodside
20	Bath Beach
21	Roosevelt Island
22	Jackson Heights
23	DUMBO
24	Tompkinsville
25	Midwood
26	Upper East Side
27	Pelham Bay
28	East Orange (NJ)
29	Norwood
30	Hamilton Heights
31	Corona
32	SoHo
33	Edison (NJ)
34	Chinatown
35	Great Kills
36	Lower East Side
37	Mott Haven
38	Ridgewood
39	Trumbull (CT)
40	Plainsboro (NJ)
41	Yonkers (NY)
42	Midtown
43	College Point
44	Brighton Beach
45	Pomona (NY)
46	Kensington
47	Homecrest
48	Tremont
49	Belmont
50	Yorkville
51	South Jamaica
52	St. Albans
53	Kingsbridge
54	East New York
55	Jamaica
56	Richmond Hill
57	Jersey City (NJ)
58	East Flatbush
59	Cambria Heights
60	Greenpoint
61	Park Hill
62	Gramercy
63	Glendale
64	Boerum Hill
65	Sheepshead Bay
66	Jamaica Hills
67	South River (NJ)
68	Crown Heights
69	East Midtown
70	Waterbury (CT)
71	East Village
72	Parkchester
73	East Harlem
74	Paterson (NJ)
75	Toms River (NJ)
76	Washington Heights
77	Lakewood (NJ)
78	Governors Island
79	Port Chester (NY)
80	Hackettstown (NJ)
81	Mt. Vernon (NY)
82	Hell's Kitchen
83	Milltown (NJ)
84	Forest Hills
85	Bensonhurst
86	Sunnyside
87	Manalapan Township (NJ)
88	Prospect Heights
89	Floral Park (NY)
90	Flushing
91	New Springville
92	Glen Rock (NJ)
93	Sunset Park
94	Bridgeport (CT)
95	South Ozone Park
96	Brooklyn Heights
97	West Village
98	Brentwood (NY)
99	Bushwick
100	Hunts Point
101	Brewster (NY)
102	Far Rockaway
103	Bay Ridge
104	Mount Hope
105	East Elmhurst
106	Elm Park
107	Borough Park
108	Whitestone
109	Williamsburg
110	Gravesend
111	Douglaston-Little Neck
112	Elizabeth (NJ)
113	Dyker Heights
114	Boonton (NJ)
115	Union City (NJ)
116	Financial District
117	Clifton (NJ)
118	Van Nest
119	Lenox Hill
120	Claremont
121	Morris Heights
122	Morrisania
123	Prospect Lefferts Gardens
124	Kew Gardens Hills
125	Hicksville (NY)
126	Perth Amboy (NJ)
127	Cypress Hills
128	Kingston (NY)
129	Park Slope
130	Fordham
131	Gowanus
132	Spring Valley (NY)
133	Ossining (NY)
134	Soundview
135	Cobble Hill
136	Larchmont (NY)
137	Chelsea
138	Queens Village
139	Kips Bay
140	Ocean Hill-Brownsville
141	Charlotte Gardens
142	Ozone Park
143	Pelham Parkway
144	Manville (NJ)
145	Hoboken (NJ)
146	Auburndale
147	Canarsie
148	White Plains (NY)
149	Upper West Side
150	Kiryas Joel (NY)
151	Fort Greene
152	Pomonok
153	Fair Lawn (NJ)
154	Utopia
155	Lincoln Square
156	Passaic (NJ)
157	New Brunswick (NJ)
158	Bellerose
159	Great Neck (NY)
160	Jamaica Estates
161	Long Island City
162	Woodlawn
163	Red Hook
164	Pearl River (NY)
165	Breezy Point
166	Middle Village
167	Gerritsen Beach
168	Silver Lake
169	Morris Park
170	Tuckahoe (NY)
171	Wakefield
172	New Rochelle (NY)
173	East Williamsburg
174	Fort Lee (NJ)
175	Suffern (NY)
176	Monticello (NY)
177	Riverdale
178	Hewlett (NY)
179	Roslyn (NY)
180	Fairview (NJ)
181	Morningside Heights
182	Howell (NJ)
183	Plainview (NY)
184	Riverhead (NY)
185	Rego Park
186	Carroll Gardens
187	NoMad
188	Palisades Park (NJ)
189	New Milford (NJ)
190	Greenwich Village
191	Highbridge
192	Terryville (CT)
193	Maspeth
194	Walpack (NJ)
195	Mahwah (NJ)
196	Flemington (NJ)
197	City Island
198	Trenton (NJ)
199	Allerton
200	Franklin Square (NY)
201	Plainfield (NJ)
202	St. George
203	Briarwood
204	Garfield (NJ)
205	Battery Park City
206	Hillsborough (NJ)
207	Williamsbridge
208	Manor Heights
209	Morristown (NJ)
210	Port Richmond
211	Jericho (NY)
212	Princeton (NJ)
213	Laurence Harbor (NJ)
214	New Haven (CT)
215	Highland Park (NJ)
216	North New Hyde Park (NY)
217	Kent (CT)
218	Red Hook (NY)
219	Westerleigh
220	Montauk (NY)
221	Melrose
222	Valley Stream (NY)
223	Flatlands
224	Eltingville
225	Murray Hill-QNS
226	Hillcrest
227	Bridgewater (NJ)
228	Linden (NJ)
229	Norwalk (CT)
230	Throgs Neck
231	Oakwood
232	Howard Beach
233	Mapleton
234	Midland Beach
235	Sea Cliff (NY)
236	North Riverdale
237	Woodland Park (NJ)
238	Kew Gardens
239	Kearny (NJ)
240	Flatiron
241	Walkill (NY)
242	Shinnecock Reservation - Southampton (NY)
243	Bayonne (NJ)
244	Fairfield (CT)
245	Stapleton
246	Grymes Hill
247	Co-op City
248	Paramus (NJ)
249	Deal (NJ)
250	Inwood
251	Bayside
252	Centereach (NY)
253	Walden (NY)
254	Haworth (NJ)
255	South Bound Brook (NJ)
256	Kerhonkson (NY)
257	Poospatuck Reservation - Mastic (NY)
258	Dover (NJ)
259	Manhattan Beach
260	Poughkeepsie (NY)
\.


--
-- Data for Name: world_regions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.world_regions (id, world_region) FROM stdin;
1	Western Asia
2	Southern Europe
3	Southeastern Asia
4	Western Africa
5	Northern America
6	Southern Africa
7	Northern Africa
8	Western Europe
9	Eastern Asia
10	Eastern Africa
11	Central America
12	Caribbean
13	Southern Asia
14	South America
15	Australia and New Zealand
16	Middle Africa
17	Central Asia
18	Eastern Europe
19	Melanesia
20	Northern Europe
21	Micronesia
22	Polynesia
\.


--
-- PostgreSQL database dump complete
--

