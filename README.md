# Wikipedia Big Data Analysis

This analysis consists of using big data tools to answer questions about datasets from Wikipedia. There are a series of analysis questions, answered using Hive and MapReduce. The tools used are determined based on the context for each question. The output of the analysis includes MapReduce jarfiles and .hql files so that the analysis is a repeatable process that works on a larger dataset, not just an ad hoc calculation.

# Technologies Used

1.  Scala
2.  sbt
3.  HDFS
4.  YARN
5.  MapReduce
6.  Hadoop
7.  Hive

# Features

1.  Find, organize, and format pageviews on any given day.
2.  Follow clickstreams to find relative frequencies of different pages.
3.  Determine relative popularity of page access methods.
4.  Compare yearly popularity of pages.

# Getting Started

Most of the code was done using HQL in a Hive GUI interface via DBeaver

1. Download DBeaver community edition - https://dbeaver.io/download/
2. Install Hive on your machine or virtual machine - https://phoenixnap.com/kb/install-hive-on-ubuntu
3. Clone my code - git clone https://github.com/samye760/Wikipedia-Big-Data-Analysis.git
4. Setup a Hive connection in DBeaver, import my script, and start querying the data.

# Usage

1. The HQL commands can be used on similar large datasets, specifically those found in Wikipedia dumps - https://dumps.wikimedia.org/
2. This script was designed to answer all sorts of questions pertaining to big data.
