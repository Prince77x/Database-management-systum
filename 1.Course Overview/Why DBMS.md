# Data Management 
# managment of data or record is a basic need for human society 

--> Storage 
-->Retrieval
--> Transaction
--> AUDIT 
--> Archival 

 # for 
 --> individual 
 -->small/big enterpise 
 --> global

 ==> Two major approaches 
 1.Physical 
    ->This management formally known as BOOK KEEPING has being physical ledgers and journals for centuries.



2. Electronic
  -> This type of management moves with advance in technology - especially of memory ,storage ,computing and networking 
    
    * 1950 => computer programming started 
    * 1960 => Data management with punch card 
    * 1970 =>
         ->COBOL and CODASYL approach was introduced in 1971

         -> on october 14 in 1979. Apple || platform shipped VisiCalc, grandfather of todays spreadsheets 
         ->management disks became prevalent 

    * 1980 => RBDMS changed the face of datamanagement 

    * 1990 => with internet data management became global 

    * 2000 => e-commerce boomed ,NoSQL was introduced for unstructured data management 

    * 2010 => Data science started riding high 


Electronic data management depends on various parameters :
1. Durability 
2. Scalability 
3. security 
4. Retrieval
5. Ease of use 
6. Consitency 
7. Effciency 
8. Cost 
9. ...... 


# file handling by python v/s DBMS and compare parameters


| **Parameter**                                        | **File Handling via Python**                                                                                 | **DBMS**                                                                                           |
| ---------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------- |
| **Scalability with respect to amount of data**       | Very difficult to handle insert, update and querying of records                                              | In-built features provide high scalability for a large number of records                           |
| **Scalability with respect to changes in structure** | Extremely difficult to change the structure of records (e.g., adding/removing attributes)                    | Adding/removing attributes can be done seamlessly using simple SQL queries                         |
| **Time of execution**                                | In seconds                                                                                                   | In milliseconds                                                                                    |
| **Persistence**                                      | Data processed using temporary data structures, must be manually updated to the file                         | Data persistence ensured via automatic, system-induced mechanisms                                  |
| **Robustness**                                       | Ensuring robustness must be done manually                                                                    | Backup, recovery and restore need minimum manual intervention                                      |
| **Security**                                         | Difficult to implement in Python (security at OS level)                                                      | User-specific access at database level                                                             |
| **Programmer’s productivity**                        | Most file access operations involve extensive coding to ensure persistence, robustness, and security of data | Standard and simple built-in queries reduce coding effort, thus increasing programmer’s throughput |
| **Arithmetic operations**                            | Easy to do arithmetic computations                                                                           | Limited set of arithmetic operations available                                                     |
| **Costs**                                            | Low costs for hardware, software, and human resources                                                        | High costs for hardware, software, and human resources                                             |

