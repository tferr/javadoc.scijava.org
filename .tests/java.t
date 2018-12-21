Check primary URLs:

  $ curl -Is https://javadoc.scijava.org/Java6/index.html | head -n1
  HTTP/1.1 200 OK
  $ curl -Is https://javadoc.scijava.org/Java7/index.html | head -n1
  HTTP/1.1 200 OK
  $ curl -Is https://javadoc.scijava.org/Java8/index.html | head -n1
  HTTP/1.1 200 OK

Check secondary aliases:

  $ curl -Is https://javadoc.scijava.org/Java/index.html | head -n1
  HTTP/1.1 200 OK

Check that trailing slashes are added appropriately:

  $ curl -Is https://javadoc.scijava.org/Java6 | grep '^\(HTTP/\|Location:\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://javadoc.scijava.org/Java6/
  $ curl -Is https://javadoc.scijava.org/Java7 | grep '^\(HTTP/\|Location:\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://javadoc.scijava.org/Java7/
  $ curl -Is https://javadoc.scijava.org/Java8 | grep '^\(HTTP/\|Location:\)'
  HTTP/1.1 301 Moved Permanently
  Location: https://javadoc.scijava.org/Java8/
