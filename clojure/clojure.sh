#!/bin/sh

if [ "x$CLASSPATH" = "x" ] ; then
    extra_classpath=""
else
    extra_classpath=":$CLASSPATH"
fi

while true ; do
    case "$1" in
        -cp | -classpath)
            extra_classpath=":$2"
            shift 2 ;;
        --)
            shift
            break ;;
        *)
            break ;;
    esac
done

if [ "x$1" = "x" -a "x`which rlwrap`" != "x" ] ; then
    rlwrap="rlwrap -r -c -C clojure -f /etc/rlwrap/clojure1.6 -b (){}[],^%\$#@\"\";:''|\\"
fi

exec $rlwrap java -cp /usr/share/java/clojure-1.6.jar"$extra_classpath" clojure.main "$@"
