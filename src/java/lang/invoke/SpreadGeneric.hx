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
@:internal extern class SpreadGeneric
{
	/** Build an adapter of the given generic type, which invokes typedTarget
	*  on the incoming arguments, after unboxing as necessary.
	*  The return value is boxed if necessary.
	* @param genericType  the required type of the result
	* @param typedTarget the target
	* @return an adapter method handle
	*/
	@:overload public static function make(target : java.lang.invoke.MethodHandle, spreadCount : Int) : java.lang.invoke.MethodHandle;
	
	/** A check/coercion that happens once before any selections. */
	@:overload private function check(av : Dynamic, n : Int) : Dynamic;
	
	/** The selection operator for spreading; note that it takes Object not Object[]. */
	@:overload private function select(av : Dynamic, n : Int) : Dynamic;
	
	
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
@:native('java$lang$invoke$SpreadGeneric$Adapter') @:internal extern class SpreadGeneric_Adapter extends java.lang.invoke.BoundMethodHandle
{
	/*
	* class X<<R,int M,int N>> extends Adapter {
	*   (Object**N)=>R target;
	*   static int S = N-M;
	*   Object invoke(Object**M a, Object v) = target(a..., v[0]...v[S-1]);
	* }
	*/
	private var outer(default, null) : SpreadGeneric;
	
	private var target(default, null) : java.lang.invoke.MethodHandle;
	
	@:overload private function isPrototype() : Bool;
	
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, target : java.lang.invoke.MethodHandle) : Void;
	
	/** Make a copy of self, with new fields. */
	@:overload @:abstract private function makeInstance(outer : SpreadGeneric, target : java.lang.invoke.MethodHandle) : SpreadGeneric_Adapter;
	
	@:overload private function check(av : Dynamic, n : Int) : Dynamic;
	
	@:overload private function select(av : Dynamic, n : Int) : Dynamic;
	
	
}
/*
: SHELL; n=SpreadGeneric; cp -p $n.java $n.java-; sed < $n.java- > $n.java+ -e '/{{*{{/,/}}*}}/w /tmp/genclasses.java' -e '/}}*}}/q'; (cd /tmp; javac -d . genclasses.java; java -cp . genclasses) >> $n.java+; echo '}' >> $n.java+; mv $n.java+ $n.java; mv $n.java- $n.java~
//{{{
import java.util.*;
class genclasses {
static String[][] TEMPLATES = { {
"@for@ N=0..10",
"    //@each-cat@",
"    static class @cat@ extends Adapter {",
"        protected @cat@(SpreadGeneric outer) { super(outer); }  // to build prototype",
"        protected @cat@(SpreadGeneric outer, MethodHandle t) { super(outer, t); }",
"        protected @cat@ makeInstance(SpreadGeneric outer, MethodHandle t) { return new @cat@(outer, t); }",
"        protected Object invoke_S0(@Tvav,@Object av) throws Throwable { av = super.check(av, 0);",
"            return target.invokeExact(@av@); }",
"        //@each-S@",
"        protected Object invoke_S@S@(@Tvav,@Object av) throws Throwable { av = super.check(av, @S@);",
"            return target.invokeExact(@av,@@sv@); }",
"        //@end-S@",
"    }",
} };
static final String NEWLINE_INDENT = "\n                ";
enum VAR {
cat, N, S, av, av_, Tvav_, sv;
public final String pattern = "@"+toString().replace('_','.')+"@";
public String binding = toString();
static void makeBindings(boolean topLevel, int outargs, int spread) {
int inargs = outargs - spread;
VAR.cat.binding = "S"+outargs;
VAR.N.binding = String.valueOf(outargs); // outgoing arg count
VAR.S.binding = String.valueOf(spread);  // spread count
String[] av = new String[inargs];
String[] Tvav = new String[inargs];
for (int i = 0; i < inargs; i++) {
av[i] = arg(i);
Tvav[i] = param("Object", av[i]);
}
VAR.av.binding = comma(av);
VAR.av_.binding = comma(av, ", ");
VAR.Tvav_.binding = comma(Tvav, ", ");
String[] sv = new String[spread];
for (int i = 0; i < spread; i++) {
String spc = "";
if (i % 4 == 0) spc = NEWLINE_INDENT;
sv[i] = spc+"super.select(av,"+i+")";
}
VAR.sv.binding = comma(sv);
}
static String arg(int i) { return "a"+i; }
static String param(String t, String a) { return t+" "+a; }
static String comma(String[] v) { return comma(v, ""); }
static String comma(String[] v, String sep) {
if (v.length == 0)  return "";
String res = v[0];
for (int i = 1; i < v.length; i++)  res += ", "+v[i];
return res + sep;
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
for (int outargs = MIN_ARITY; outargs <= MAX_ARITY; outargs++) {
expandTemplate(template, true, outargs, 0);
}
}
static void expandTemplate(String[] template, boolean topLevel, int outargs, int spread) {
VAR.makeBindings(topLevel, outargs, spread);
for (int i = 0; i < template.length; i++) {
String line = template[i];
if (line.endsWith("@each-cat@")) {
// ignore
} else if (line.endsWith("@each-S@")) {
int blockEnd = indexAfter(template, i, "@end-S@");
String[] block = stringsIn(template, i+1, blockEnd-1);
for (int spread1 = spread+1; spread1 <= outargs; spread1++)
expandTemplate(block, false, outargs, spread1);
VAR.makeBindings(topLevel, outargs, spread);
i = blockEnd-1; continue;
} else {
System.out.println(VAR.transform(line));
}
}
}
}
//}}} */
@:native('java$lang$invoke$SpreadGeneric$S0') @:internal extern class SpreadGeneric_S0 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S0;
	
	@:overload private function invoke_S0(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S1') @:internal extern class SpreadGeneric_S1 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S1;
	
	@:overload private function invoke_S0(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S2') @:internal extern class SpreadGeneric_S2 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S2;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S3') @:internal extern class SpreadGeneric_S3 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S3;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S3(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S4') @:internal extern class SpreadGeneric_S4 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S4;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S3(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S4(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S5') @:internal extern class SpreadGeneric_S5 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S5;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S3(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S4(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S5(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S6') @:internal extern class SpreadGeneric_S6 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S6;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S4(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S5(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S6(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S7') @:internal extern class SpreadGeneric_S7 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S7;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S5(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S6(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S7(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S8') @:internal extern class SpreadGeneric_S8 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S8;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S6(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S7(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S8(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S9') @:internal extern class SpreadGeneric_S9 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S9;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S7(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S8(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S9(av : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$SpreadGeneric$S10') @:internal extern class SpreadGeneric_S10 extends SpreadGeneric_Adapter
{
	@:overload private function new(outer : SpreadGeneric) : Void;
	
	@:overload private function new(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(outer : SpreadGeneric, t : java.lang.invoke.MethodHandle) : SpreadGeneric_S10;
	
	@:overload private function invoke_S0(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S1(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S2(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S8(a0 : Dynamic, a1 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S9(a0 : Dynamic, av : Dynamic) : Dynamic;
	
	@:overload private function invoke_S10(av : Dynamic) : Dynamic;
	
	
}
