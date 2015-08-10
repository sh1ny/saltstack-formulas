#!/bin/bash

# export JAVA_HOME=

# Spark master url. eg. spark://master_addr:7077. Leave empty if you want to use local mode
export MASTER=mesos://zk://{{ zk_str }}/mesos
export MESOS_NATIVE_LIBRARY="{{ pillar['mesos']['libmesos'] }}"
export SPARK_HOME="{{ spark_home }}"

# export ZEPPELIN_JAVA_OPTS      # Additional jvm options. for example, export ZEPPELIN_JAVA_OPTS="-Dspark.executor.memory=8g -Dspark.cores.max=16"
# export ZEPPELIN_MEM            # Zeppelin jvm mem options Default -Xmx1024m -XX:MaxPermSize=512m

# export ZEPPELIN_LOG_DIR        # Where log files are stored.  PWD by default.
# export ZEPPELIN_PID_DIR        # The pid files are stored. /tmp by default.
# export ZEPPELIN_NOTEBOOK_DIR   # Where notebook saved
# export ZEPPELIN_IDENT_STRING   # A string representing this instance of zeppelin. $USER by default
# export ZEPPELIN_NICENESS       # The scheduling priority for daemons. Defaults to 0.

# Options read in YARN client mode
# export SPARK_YARN_JAR          # Yarn executor needs spark-assembly-*.jar for running tasks in a yarn cluster.
export HADOOP_CONF_DIR="{{ hdfs_conf_path }}"         # yarn-site.xml is located in configuration directory in HADOOP_CONF_DIR.


# export ZEPPELIN_INTP_MEM       		# zeppelin interpreter process jvm mem options. Default = ZEPPELIN_MEM
# export ZEPPELIN_INTP_JAVA_OPTS 		# zeppelin interpreter process jvm options. Default = ZEPPELIN_JAVA_OPTS

# export ZEPPELIN_NOTEBOOK_S3_BUCKET    # Bucket where notebook saved
# export ZEPPELIN_NOTEBOOK_S3_USER      # User in bucket where notebook saved. For example bucket/user/notebook/2A94M5J1Z/note.json

# export ZEPPELIN_SPARK_USEHIVECONTEXT  # Use HiveContext instead of SQLContext if set true. true by default.
# export ZEPPELIN_SPARK_CONCURRENTSQL   # Execute multiple SQL concurrently if set true. false by default.
# export ZEPPELIN_SPARK_MAXRESULT       # Max number of SparkSQL result to display. 1000 by default.

# Pyspark (supported with Spark 1.2.1 and above)
# To configure pyspark, you need to set spark distribution's path to 'spark.home' property in Interpreter setting screen in Zeppelin GUI
# export PYSPARK_PYTHON          		# path to the python command. must be the same path on the driver(Zeppelin) and all workers.
# export PYTHONPATH              		# extra PYTHONPATH.
