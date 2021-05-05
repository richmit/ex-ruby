#include "ruby.h"

static VALUE aMethod_method1(VALUE self) {
  int x = 10;
  return INT2NUM(x);
}

void Init_ExExt1() {
  VALUE ExExt1 = rb_define_module("ExExt1");
  rb_define_method(ExExt1, "method1", aMethod_method1, 0);
  printf("cExt1 initialized\n");
}


/* Check out rb_define_class */
