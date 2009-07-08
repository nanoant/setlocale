#include <locale.h>
#include "ruby.h"

static VALUE
	rb_setlocale(int category, const char *locale)
{
	char *r = setlocale(category, locale);
	if (!r) rb_raise(rb_eRuntimeError, "setlocale");
	return rb_str_new2(r);
}

static inline VALUE
	locale_set(int category, VALUE locale)
{
	return rb_setlocale(category, StringValueCStr(locale));
}

static inline VALUE
	locale_get(int category)
{
	return rb_setlocale(category, NULL);
}

#define funcs(n, c) \
static VALUE rb_getlocale_##n(VALUE self) {return locale_get(c);} \
static VALUE rb_setlocale_##n(VALUE self, VALUE val) {return locale_set(c, val);} \
/* end of funcs */

	foreach_categories(funcs)

	void
	Init_setlocale_ext(void)
{
	VALUE locale = rb_define_module("Locale");
#define methods(n, c) \
	rb_define_singleton_method(locale, #n, rb_getlocale_##n, 0); \
	rb_define_singleton_method(locale, #n"=", rb_setlocale_##n, 1); \
	/* end of methods */

	foreach_categories(methods);
}
