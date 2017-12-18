dnl $Id$
dnl config.m4 for extension innerval

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(innerval, for innerval support,
dnl Make sure that the comment is aligned:
dnl [  --with-innerval             Include innerval support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(innerval, whether to enable innerval support,
Make sure that the comment is aligned:
[  --enable-innerval           Enable innerval support])

if test "$PHP_INNERVAL" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-innerval -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/innerval.h"  # you most likely want to change this
  dnl if test -r $PHP_INNERVAL/$SEARCH_FOR; then # path given as parameter
  dnl   INNERVAL_DIR=$PHP_INNERVAL
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for innerval files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       INNERVAL_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$INNERVAL_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the innerval distribution])
  dnl fi

  dnl # --with-innerval -> add include path
  dnl PHP_ADD_INCLUDE($INNERVAL_DIR/include)

  dnl # --with-innerval -> check for lib and symbol presence
  dnl LIBNAME=innerval # you may want to change this
  dnl LIBSYMBOL=innerval # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $INNERVAL_DIR/$PHP_LIBDIR, INNERVAL_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_INNERVALLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong innerval lib version or lib not found])
  dnl ],[
  dnl   -L$INNERVAL_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(INNERVAL_SHARED_LIBADD)

  PHP_NEW_EXTENSION(innerval, innerval.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
