CLASSPATH = lib/*:.

MarkdownParse.class: MarkdownParse.java
	javac -cp $(CLASSPATH) MarkdownParse.java

MarkdownParseTest.class: MarkdownParseTest.java
	javac -cp $(CLASSPATH) MarkdownParseTest.java MarkdownParse.java

test: MarkdownParse.java MarkdownParse.class MarkdownParseTest.class
	java -cp $(CLASSPATH) org.junit.runner.JUnitCore MarkdownParseTest

TryCommonMark.class: TryCommonMark.java
	javac -g -cp $(CLASSPATH) TryCommonMark.java
	java -cp $(CLASSPATH) TryCommonMark