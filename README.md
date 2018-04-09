


# Big Data and Hadoop  
## Youtube Data Analysis   
### Programmer: Akram M'Tir  



####  ETL - Extraction, Transformation and Load  
####  1 - Import, Clean the data and reduce the nose using bash shell and  Pig.  
In the Edureka VM connected to internet, open a terminal, and execute the main script "HadoopCertification_Ak_MTir_042017.sh" as shown bellow.  

####  HADOOP HDFS File System  
####  2 - Store the data into the HDFS Hadoop File System  
The script will import the dataset and will store the extracted data in the Hadoop File System.  


#### Process and analyse the data using Pig and Hive sql.
Next the script will process and analyse the data using Pig language and Hive sql to answer the questions.  



edureka@localhost project$ bash HadoopCertification_Ak_MTir_042017.sh   
--2017-04-07 02:25:04--  https://edureka.wistia.com/medias/6cchxi6to4/download?media_file_id=65311528  
Resolving edureka.wistia.com... 23.253.167.227  
Connecting to edureka.wistia.com|23.253.167.227|:443... connected.  
HTTP request sent, awaiting response... 302 Found  
Location: https://embed-ssl.wistia.com/deliveries/7ce70197f88a9ca5e57cd2895dd90e819eee484e.bin?disposition=attachment&filename=youtubedata.txt following  
--2017-04-07 02:25:05--  https://embed-ssl.wistia.com/deliveries/7ce70197f88a9ca5e57cd2895dd90e819eee484e.bin?disposition=attachment&filename=youtubedata.txt  
Resolving embed-ssl.wistia.com... 93.184.221.133  
Connecting to embed-ssl.wistia.com|93.184.221.133|:443... connected.  
HTTP request sent, awaiting response... 200 OK  
Length: 969389 (947K) text/plain  
Saving to: “download?media_file_id=65311528”  

100% ========================================================================================================> 969,389      652K/s   in 1.5s  

2017-04-07 02:25:06 (652 KB/s) - “download?media_file_id=65311528” saved 969389/969389  


  
Total Number of records: 4100  

Decomposition of the records by Categories:  

&nbsp;&nbsp;&nbsp;&nbsp;    908 Entertainment  
&nbsp;&nbsp;&nbsp;&nbsp;    862 Music  
&nbsp;&nbsp;&nbsp;&nbsp;    414 Comedy  
&nbsp;&nbsp;&nbsp;&nbsp;    398 People & Blogs  
&nbsp;&nbsp;&nbsp;&nbsp;    333 News & Politics  
&nbsp;&nbsp;&nbsp;&nbsp;    260 Film & Animation  
&nbsp;&nbsp;&nbsp;&nbsp;    251 Sports  
&nbsp;&nbsp;&nbsp;&nbsp;    137 Howto & Style  
&nbsp;&nbsp;&nbsp;&nbsp;    112 Travel & Events  
&nbsp;&nbsp;&nbsp;&nbsp;     95 Pets & Animals  
&nbsp;&nbsp;&nbsp;&nbsp;     80 Science & Technology  
&nbsp;&nbsp;&nbsp;&nbsp;     77 Autos & Vehicles  
&nbsp;&nbsp;&nbsp;&nbsp;     65 Education  
&nbsp;&nbsp;&nbsp;&nbsp;     42 Nonprofits & Activism  
&nbsp;&nbsp;&nbsp;&nbsp;     34   
&nbsp;&nbsp;&nbsp;&nbsp;     32  UNA   


Sample records:  

011bZQK8XR8 andr3sfc 770 Sports 250 32131 4.74 19 13  
02xJsQAsnx8 PiratePrinceEdward 1119 Education 9 21 0 0 0  
03V31oBx4sA codike1 1094 People & Blogs 81 154 5 1 1  
04ERBsim9rc ernielunati 1135 News & Politics 610 294 3 4 2  
04Ok0piOE2A oskay 981 Howto & Style 34 98345 4.64 149 75  
04OouL7KEY0 Alow411 1103 Comedy 191 399 2.33 3 2  
06BgrtSBdok juan833blue 1057 Travel & Events 65 115 0 0 1  
082ckIEEEak MissChristineDaae 1135 Music 323 727 4.75 4 6  
08hU_p48YBI FrankieThaLuckyDog 1077 Music 536 148918 4.52 152 111  
08JInh8Slx0 shokaten 1005 Education 158 4967 5 3 4  

....  

Answer to Question A:  

Job 1: Map: 1  Reduce: 1   Cumulative CPU: 0.93 sec   HDFS Read: 967 HDFS Write: 78 SUCCESS  
Total MapReduce CPU Time Spent: 1 seconds 980 msec  
OK  
Entertainment	908  
Music	862  
Comedy	414  
People & Blogs	398  
News & Politics	333  
Time taken: 34.89 seconds, Fetched: 5 row(s)  

....  

Answer to Question B:  

MapReduce Total cumulative CPU time: 1 seconds 140 msec  
Ended Job = job_1491545064181_0001  
MapReduce Jobs Launched:   
Job 0: Map: 1  Reduce: 1   Cumulative CPU: 1.14 sec   HDFS Read: 969630 HDFS Write: 422 SUCCESS  
Total MapReduce CPU Time Spent: 1 seconds 140 msec  
OK  
kHmvkRoEowc	Entertainment	18235463	2.42	122129  
EwTZ2xpQwpA	Music	16841569	4.23	83514  
rZBA0SKmQy8	Comedy	11007201	4.83	75004  
4DC4Rb9quKk	Music	33754615	4.84	73257  
LU8DDYz68kM	Pets & Animals	27721690	4.88	58850  
Qit3ALTelOo	Pets & Animals	7939352	4.76	56767  
irp8CNj9qBI	Music	10172172	4.9	43774  
3QL97xldoXc	Travel & Events	3010296	3.44	37247  
LTxO_pgMqys	Entertainment	3731016	4.82	35352  
Md6rURKhZmA	Music	18141492	4.83	34802  
Time taken: 19.801 seconds, Fetched: 10 row(s)  


....  

Answer to Question C:  

MapReduce Total cumulative CPU time: 1 seconds 200 msec  
Ended Job = job_1491459718997_0074  
MapReduce Jobs Launched:   
Job 0: Map: 1  Reduce: 1   Cumulative CPU: 1.2 sec   HDFS Read: 969630 HDFS Write: 802 SUCCESS  
Total MapReduce CPU Time Spent: 1 seconds 200 msec  
OK  
12Z3J1uzd0Q	Film & Animation	65341925	3.03	9189  
4DC4Rb9quKk	Music	33754615	4.84	73257  
LU8DDYz68kM	Pets & Animals	27721690	4.88	58850  
kHmvkRoEowc	Entertainment	18235463	2.42	122129  
Md6rURKhZmA	Music	18141492	4.83	34802  
EwTZ2xpQwpA	Music	16841569	4.23	83514  
A2f3cuUXXRs	Music	13038204	4.8	18910  
rZBA0SKmQy8	Comedy	11007201	4.83	75004  
irp8CNj9qBI	Music	10172172	4.9	43774  
ZCYaw5tGYAs	Comedy	8944331	4.86	16551  
YCj-RyKCmHQ	Music	8892789	4.61	10511  
Pxs5EM3xlus	Music	8361412	4.87	12752  
eBGIQ7ZuuiU	Comedy	8119804	4.64	23256  
rDB9zwlXrB8	Music	7990144	4.9	15439  
Qit3ALTelOo	Pets & Animals	7939352	4.76	56767  
O61Do03ZCjw	Music	7553998	4.69	16334  
veYbj2zypaM	Music	7155928	4.81	20364  
iikKzQwgBJc	Music	7043921	4.86	17885  
pFlcqWQVVuU	Entertainment	6618744	4.73	17739  
GfPJeDssBOM	Howto & Style	6101232	4.47	22030  
Time taken: 14.505 seconds, Fetched: 20 row(s)  


...  


