package java.lang.invoke;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
@:internal extern class FilterGeneric
{
	/** Build an adapter of the given generic type, which invokes filter
	*  on the selected incoming argument before passing it to the target.
	* @param pos the argument to filter
	* @param filter the function to call on the argument
	* @param target the target to call with the modified argument list
	* @return an adapter method handle
	*/
	@:overload @:public @:static public static function makeArgumentFilter(pos : Int, filter : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : java.lang.invoke.MethodHandle;
	
	/** Build an adapter of the given generic type, which invokes a combiner
	*  on a selected group of leading arguments.
	*  The result of the combiner is prepended before all those arguments.
	* @param combiner the function to call on the selected leading arguments
	* @param target the target to call with the modified argument list
	* @return an adapter method handle
	*/
	@:overload @:public @:static public static function makeArgumentFolder(combiner : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : java.lang.invoke.MethodHandle;
	
	/** Build an adapter of the given generic type, which invokes a filter
	*  on the incoming arguments, reified as a group.
	*  The argument may be modified (by side effects in the filter).
	*  The arguments, possibly modified, are passed on to the target.
	* @param filter the function to call on the arguments
	* @param target the target to call with the possibly-modified argument list
	* @return an adapter method handle
	*/
	@:overload @:public @:static public static function makeFlyby(filter : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : java.lang.invoke.MethodHandle;
	
	/** Build an adapter of the given generic type, which invokes a collector
	*  on the selected incoming argument and all following arguments.
	*  The result of the collector replaces all those arguments.
	* @param collector the function to call on the selected trailing arguments
	* @param target the target to call with the modified argument list
	* @return an adapter method handle
	*/
	@:overload @:public @:static public static function makeArgumentCollector(collector : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : java.lang.invoke.MethodHandle;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* This adapter takes some untyped arguments, and returns an untyped result.
* Internally, it applies the invoker to the target, which causes the
* objects to be unboxed; the result is a raw type in L/I/J/F/D.
* This result is passed to convert, which is responsible for
* converting the raw result into a boxed object.
* The invoker is kept separate from the target because it can be
* generated once per type erasure family, and reused across adapters.
*/
@:native('java$lang$invoke$FilterGeneric$Adapter') @:internal extern class FilterGeneric_Adapter extends java.lang.invoke.BoundMethodHandle
{
	@:protected @:final private var filter(default, null) : java.lang.invoke.MethodHandle;
	
	@:protected @:final private var target(default, null) : java.lang.invoke.MethodHandle;
	
	@:overload @:protected private function isPrototype() : Bool;
	
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function prototypeEntryPoint() : java.lang.invoke.MethodHandle;
	
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle, filter : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : Void;
	
	/** Make a copy of self, with new fields. */
	@:overload @:protected @:abstract private function makeInstance(entryPoint : java.lang.invoke.MethodHandle, filter : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_Adapter;
	
	
}
@:native('java$lang$invoke$FilterGeneric$Kind') extern enum FilterGeneric_Kind
{
	value;
	fold;
	collect;
	flyby;
	LIMIT;
	
}

/* generated classes follow this pattern:
static class F1X extends Adapter {
protected F1X(MethodHandle entryPoint) { super(entryPoint); }  // to build prototype
protected F1X(MethodHandle e, MethodHandle f, MethodHandle t)
{ super(e, f, t); }
protected F1X makeInstance(MethodHandle e, MethodHandle f, MethodHandle t)
{ return new F1X(e, f, t); }
protected Object invoke_V0(Object a0) { return target.invokeExact(filter.invokeExact(a0)); }
protected Object invoke_F0(Object a0) { return target.invokeExact(filter.invokeExact(), a0); }
protected Object invoke_F1(Object a0) { return target.invokeExact(filter.invokeExact(a0), a0); }
protected Object invoke_C0(Object a0) { return target.invokeExact(filter.invokeExact(a0)); }
protected Object invoke_C1(Object a0) { return target.invokeExact(a0, filter.invokeExact()); }
protected Object invoke_Y0(Object a0) { Object[] av = { a0 };
filter.invokeExact(av); return target.invokeExact(av[0]); }
}
static class F2X extends Adapter {
protected F2X(MethodHandle entryPoint) { super(entryPoint); }  // to build prototype
protected F2X(MethodHandle e, MethodHandle f, MethodHandle t)
{ super(e, f, t); }
protected F2X makeInstance(MethodHandle e, MethodHandle f, MethodHandle t)
{ return new F2X(e, f, t); }
protected Object invoke_V0(Object a0, Object a1) { return target.invokeExact(filter.invokeExact(a0), a1); }
protected Object invoke_V1(Object a0, Object a1) { return target.invokeExact(a0, filter.invokeExact(a1)); }
protected Object invoke_F0(Object a0, Object a1) { return target.invokeExact(filter.invokeExact(), a0, a1); }
protected Object invoke_F1(Object a0, Object a1) { return target.invokeExact(filter.invokeExact(a0), a0, a1); }
protected Object invoke_F2(Object a0, Object a1) { return target.invokeExact(filter.invokeExact(a0, a1), a0, a1); }
protected Object invoke_C0(Object a0, Object a1) { return target.invokeExact(filter.invokeExact(a0, a1)); }
protected Object invoke_C1(Object a0, Object a1) { return target.invokeExact(a0, filter.invokeExact(a1)); }
protected Object invoke_C2(Object a0, Object a1) { return target.invokeExact(a0, a1, filter.invokeExact()); }
protected Object invoke_Y0(Object a0, Object a1) { Object[] av = { a0, a1 };
filter.invokeExact(av); return target.invokeExact(av[0], av[1]); }
}
// */
@:native('java$lang$invoke$FilterGeneric$F0') @:internal extern class FilterGeneric_F0 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F0;
	
	@:overload @:protected private function invoke_F0() : Dynamic;
	
	@:overload @:protected private function invoke_C0() : Dynamic;
	
	@:overload @:protected private function invoke_Y0() : Dynamic;
	
	
}
/*
: SHELL; n=FilterGeneric; cp -p $n.java $n.java-; sed < $n.java- > $n.java+ -e '/{{*{{/,/}}*}}/w /tmp/genclasses.java' -e '/}}*}}/q'; (cd /tmp; javac -d . genclasses.java; java -ea -cp . genclasses | sed 's| *[/]/ *$||') >> $n.java+; echo '}' >> $n.java+; mv $n.java+ $n.java; mv $n.java- $n.java~
//{{{
import java.util.*;
class genclasses {
static String[][] TEMPLATES = { {
"@for@ N=1..20",
"    //@each-cat@",
"    static class @cat@ extends Adapter {",
"        protected @cat@(MethodHandle entryPoint) { super(entryPoint); }  // to build prototype",
"        protected @cat@(MethodHandle e, MethodHandle f, MethodHandle t) {",
"            super(e, f, t); }",
"        protected @cat@ makeInstance(MethodHandle e, MethodHandle f, MethodHandle t) {",
"            return new @cat@(e, f, t); }",
"        //@each-P@",
"        protected Object invoke_V@P@(@Tvav@) throws Throwable {",
"            return target.invokeExact(@a0_@@Psp@filter.invokeExact(a@P@)@_aN@); }",
"        //@end-P@",
"        //@each-P@",
"        protected Object invoke_F@P@(@Tvav@) throws Throwable {",
"            return target.invokeExact(filter.invokeExact(@a0@),",
"                                 @av@); }",
"        //@end-P@",
"        protected Object invoke_F@N@(@Tvav@) throws Throwable {",
"            return target.invokeExact(filter.invokeExact(@av@),",
"                                 @av@); }",
"        //@each-P@",
"        protected Object invoke_C@P@(@Tvav@) throws Throwable {",
"            return target.invokeExact(@a0_@filter.invokeExact(a@P@@_aN@)); }",
"        //@end-P@",
"        protected Object invoke_C@N@(@Tvav@) throws Throwable {",
"            return target.invokeExact(@av@, filter.invokeExact()); }",
"        protected Object invoke_Y0(@Tvav@) throws Throwable {",
"            Object[] av = { @av@ };",
"            filter.invokeExact(av); // make the flyby",
"            return target.invokeExact(@av[i]@); }",
"    }",
} };
static final String NEWLINE_INDENT = " //\n                                 ";
enum VAR {
cat, N, P, Tvav, av, a0, a0_, _aN, Psp, av_i_;
public final String pattern = "@"+toString().replace('_','.')+"@";
public String binding = toString();
static void makeBindings(boolean topLevel, int inargs, int pos) {
assert(-1 <= pos && pos < inargs);
VAR.cat.binding = "F"+inargs;
VAR.N.binding = String.valueOf(inargs); // incoming arg count
VAR.P.binding = String.valueOf(pos);  // selected arg position
String[] av = new String[inargs];
String[] Tvav = new String[inargs];
String[] av_i_ = new String[inargs];
for (int i = 0; i < inargs; i++) {
av[i] = arg(i);
av_i_[i] = "av["+i+"]";
String spc = "";
if (i > 0 && i % 4 == 0) spc = NEWLINE_INDENT+(pos>9?" ":"")+"  ";
Tvav[i] = spc+param("Object", av[i]);
}
VAR.av.binding = comma(av);
VAR.av_i_.binding = comma(av_i_);
VAR.Tvav.binding = comma(Tvav);
if (pos >= 0) {
VAR.Psp.binding = (pos > 0 && pos % 10 == 0) ? NEWLINE_INDENT : "";
String[] a0 = new String[pos];
String[] aN = new String[inargs - (pos+1)];
for (int i = 0; i < pos; i++) {
String spc = "";
if (i > 0 && i % 10 == 0) spc = NEWLINE_INDENT;
a0[i] = spc+av[i];
}
VAR.a0.binding = comma(a0);
VAR.a0_.binding = comma(a0, ", ");
for (int i = pos+1; i < inargs; i++) {
String spc = "";
if (i > 0 && i % 10 == 0) spc = NEWLINE_INDENT;
aN[i - (pos+1)] = spc+av[i];
}
VAR._aN.binding = comma(", ", aN);
}
}
static String arg(int i) { return "a"+i; }
static String param(String t, String a) { return t+" "+a; }
static String comma(String[] v) { return comma(v, ""); }
static String comma(String[] v, String sep) { return comma("", v, sep); }
static String comma(String sep, String[] v) { return comma(sep, v, ""); }
static String comma(String sep1, String[] v, String sep2) {
if (v.length == 0)  return "";
String res = v[0];
for (int i = 1; i < v.length; i++)  res += ", "+v[i];
return sep1 + res + sep2;
}
static String transform(String string) {
for (VAR var : values())
string = string.replaceAll(var.pattern, var.binding);
return string;
}
}
static String[] stringsIn(String[] strings, int beg, int end) {
return Arrays.copyOfRange(strings, beg, Math.min(end, strings.length));
}
static String[] stringsBefore(String[] strings, int pos) {
return stringsIn(strings, 0, pos);
}
static String[] stringsAfter(String[] strings, int pos) {
return stringsIn(strings, pos, strings.length);
}
static int indexAfter(String[] strings, int pos, String tag) {
return Math.min(indexBefore(strings, pos, tag) + 1, strings.length);
}
static int indexBefore(String[] strings, int pos, String tag) {
for (int i = pos, end = strings.length; ; i++) {
if (i == end || strings[i].endsWith(tag))  return i;
}
}
static int MIN_ARITY, MAX_ARITY;
public static void main(String... av) {
for (String[] template : TEMPLATES) {
int forLinesLimit = indexBefore(template, 0, "@each-cat@");
String[] forLines = stringsBefore(template, forLinesLimit);
template = stringsAfter(template, forLinesLimit);
for (String forLine : forLines)
expandTemplate(forLine, template);
}
}
static void expandTemplate(String forLine, String[] template) {
String[] params = forLine.split("[^0-9]+");
if (params[0].length() == 0)  params = stringsAfter(params, 1);
System.out.println("//params="+Arrays.asList(params));
int pcur = 0;
MIN_ARITY = Integer.valueOf(params[pcur++]);
MAX_ARITY = Integer.valueOf(params[pcur++]);
if (pcur != params.length)  throw new RuntimeException("bad extra param: "+forLine);
for (int inargs = MIN_ARITY; inargs <= MAX_ARITY; inargs++) {
expandTemplate(template, true, inargs, -1);
}
}
static void expandTemplate(String[] template, boolean topLevel, int inargs, int pos) {
VAR.makeBindings(topLevel, inargs, pos);
for (int i = 0; i < template.length; i++) {
String line = template[i];
if (line.endsWith("@each-cat@")) {
// ignore
} else if (line.endsWith("@each-P@")) {
int blockEnd = indexAfter(template, i, "@end-P@");
String[] block = stringsIn(template, i+1, blockEnd-1);
for (int pos1 = Math.max(0,pos); pos1 < inargs; pos1++)
expandTemplate(block, false, inargs, pos1);
VAR.makeBindings(topLevel, inargs, pos);
i = blockEnd-1; continue;
} else {
System.out.println(VAR.transform(line));
}
}
}
}
//}}} */
@:native('java$lang$invoke$FilterGeneric$F1') @:internal extern class FilterGeneric_F1 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F1;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F2') @:internal extern class FilterGeneric_F2 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F2;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F3') @:internal extern class FilterGeneric_F3 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F3;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F4') @:internal extern class FilterGeneric_F4 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F4;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F5') @:internal extern class FilterGeneric_F5 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F5;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F6') @:internal extern class FilterGeneric_F6 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F6;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F7') @:internal extern class FilterGeneric_F7 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F7;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F8') @:internal extern class FilterGeneric_F8 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F8;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F9') @:internal extern class FilterGeneric_F9 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F9;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F10') @:internal extern class FilterGeneric_F10 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F10;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F11') @:internal extern class FilterGeneric_F11 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F11;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F12') @:internal extern class FilterGeneric_F12 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F12;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F13') @:internal extern class FilterGeneric_F13 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F13;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F14') @:internal extern class FilterGeneric_F14 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F14;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F15') @:internal extern class FilterGeneric_F15 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F15;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F16') @:internal extern class FilterGeneric_F16 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F16;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F17') @:internal extern class FilterGeneric_F17 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F17;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F18') @:internal extern class FilterGeneric_F18 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F18;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F18(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C18(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F19') @:internal extern class FilterGeneric_F19 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F19;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V18(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F18(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F19(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C18(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C19(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FilterGeneric$F20') @:internal extern class FilterGeneric_F20 extends java.lang.invoke.FilterGeneric.FilterGeneric_Adapter
{
	@:overload @:protected private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected private function new(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload @:protected override private function makeInstance(e : java.lang.invoke.MethodHandle, f : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FilterGeneric.FilterGeneric_F20;
	
	@:overload @:protected private function invoke_V0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V18(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_V19(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F18(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F19(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_F20(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C11(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C12(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C13(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C14(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C15(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C16(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C17(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C18(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C19(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_C20(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	@:overload @:protected private function invoke_Y0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, a10 : Dynamic, a11 : Dynamic, a12 : Dynamic, a13 : Dynamic, a14 : Dynamic, a15 : Dynamic, a16 : Dynamic, a17 : Dynamic, a18 : Dynamic, a19 : Dynamic) : Dynamic;
	
	
}
