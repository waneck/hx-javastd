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
@:internal extern class FromGeneric
{
	/** Build an adapter of the given generic type, which invokes typedTarget
	*  on the incoming arguments, after unboxing as necessary.
	*  The return value is boxed if necessary.
	* @param typedTarget the target
	* @return an adapter method handle
	*/
	@:overload public static function make(typedTarget : java.lang.invoke.MethodHandle) : java.lang.invoke.MethodHandle;
	
	@:overload public function toString() : String;
	
	
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
@:native('java$lang$invoke$FromGeneric$Adapter') @:internal extern class FromGeneric_Adapter extends java.lang.invoke.BoundMethodHandle
{
	/*
	* class X<<R,int N>> extends Adapter {
	*   (MH, Object**N)=>raw(R) invoker;
	*   (any**N)=>R target;
	*   raw(R)=>Object convert;
	*   Object invoke(Object**N a) = convert(invoker(target, a...))
	* }
	*/
	private var invoker(default, null) : java.lang.invoke.MethodHandle;
	
	private var convert(default, null) : java.lang.invoke.MethodHandle;
	
	private var target(default, null) : java.lang.invoke.MethodHandle;
	
	@:overload private function isPrototype() : Bool;
	
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function prototypeEntryPoint() : java.lang.invoke.MethodHandle;
	
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle, invoker : java.lang.invoke.MethodHandle, convert : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : Void;
	
	/** Make a copy of self, with new fields. */
	@:overload @:abstract private function makeInstance(entryPoint : java.lang.invoke.MethodHandle, invoker : java.lang.invoke.MethodHandle, convert : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_Adapter;
	
	@:overload private function convert_L(result : Dynamic) : Dynamic;
	
	@:overload private function convert_I(result : Int) : Dynamic;
	
	@:overload private function convert_J(result : haxe.Int64) : Dynamic;
	
	@:overload private function convert_F(result : Single) : Dynamic;
	
	@:overload private function convert_D(result : Float) : Dynamic;
	
	
}
/*
: SHELL; n=FromGeneric; cp -p $n.java $n.java-; sed < $n.java- > $n.java+ -e '/{{*{{/,/}}*}}/w /tmp/genclasses.java' -e '/}}*}}/q'; (cd /tmp; javac -d . genclasses.java; java -cp . genclasses) >> $n.java+; echo '}' >> $n.java+; mv $n.java+ $n.java; mv $n.java- $n.java~
//{{{
import java.util.*;
class genclasses {
static String[] TYPES = { "Object",    "int   ",    "long  ",    "float ",    "double" };
static String[] WRAPS = { "         ", "(Integer)", "(Long)   ", "(Float)  ", "(Double) " };
static String[] TCHARS = { "L",     "I",      "J",      "F",      "D",     "A" };
static String[][] TEMPLATES = { {
"@for@ arity=0..10  rcat<=4 nrefs<=99 nints=0   nlongs=0",
"    //@each-cat@",
"    static class @cat@ extends Adapter {",
"        protected @cat@(MethodHandle entryPoint) { super(entryPoint); }  // to build prototype",
"        protected @cat@(MethodHandle e, MethodHandle i, MethodHandle c, MethodHandle t)",
"                        { super(e, i, c, t); }",
"        protected @cat@ makeInstance(MethodHandle e, MethodHandle i, MethodHandle c, MethodHandle t)",
"                        { return new @cat@(e, i, c, t); }",
"        //@each-R@",
"        protected Object invoke_@catN@(@Tvav@) throws Throwable { return convert_@Rc@((@R@)@W@invoker.invokeExact(target@av@)); }",
"        //@end-R@",
"    }",
} };
static final String NEWLINE_INDENT = "\n                ";
enum VAR {
cat, catN, R, Rc, W, av, Tvav, Ovav;
public final String pattern = "@"+toString().replace('_','.')+"@";
public String binding;
static void makeBindings(boolean topLevel, int rcat, int nrefs, int nints, int nlongs) {
int nargs = nrefs + nints + nlongs;
if (topLevel)
VAR.cat.binding = catstr(ALL_RETURN_TYPES ? TYPES.length : rcat, nrefs, nints, nlongs);
VAR.catN.binding = catstr(rcat, nrefs, nints, nlongs);
VAR.R.binding = TYPES[rcat];
VAR.Rc.binding = TCHARS[rcat];
VAR.W.binding = WRAPS[rcat];
String[] Tv = new String[nargs];
String[] av = new String[nargs];
String[] Tvav = new String[nargs];
String[] Ovav = new String[nargs];
for (int i = 0; i < nargs; i++) {
int tcat = (i < nrefs) ? 0 : (i < nrefs + nints) ? 1 : 2;
Tv[i] = TYPES[tcat];
av[i] = arg(i);
Tvav[i] = param(Tv[i], av[i]);
Ovav[i] = param("Object", av[i]);
}
VAR.av.binding = comma(", ", av);
VAR.Tvav.binding = comma(Tvav);
VAR.Ovav.binding = comma(Ovav);
}
static String arg(int i) { return "a"+i; }
static String param(String t, String a) { return t+" "+a; }
static String comma(String[] v) { return comma("", v); }
static String comma(String sep, String[] v) {
if (v.length == 0)  return "";
String res = sep+v[0];
for (int i = 1; i < v.length; i++)  res += ", "+v[i];
return res;
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
static int MIN_ARITY, MAX_ARITY, MAX_RCAT, MAX_REFS, MAX_INTS, MAX_LONGS;
static boolean ALL_ARG_TYPES, ALL_RETURN_TYPES;
static HashSet<String> done = new HashSet<String>();
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
MAX_RCAT  = Integer.valueOf(params[pcur++]);
MAX_REFS  = Integer.valueOf(params[pcur++]);
MAX_INTS  = Integer.valueOf(params[pcur++]);
MAX_LONGS = Integer.valueOf(params[pcur++]);
if (pcur != params.length)  throw new RuntimeException("bad extra param: "+forLine);
if (MAX_RCAT >= TYPES.length)  MAX_RCAT = TYPES.length - 1;
ALL_ARG_TYPES = (indexBefore(template, 0, "@each-Tv@") < template.length);
ALL_RETURN_TYPES = (indexBefore(template, 0, "@each-R@") < template.length);
for (int nargs = MIN_ARITY; nargs <= MAX_ARITY; nargs++) {
for (int rcat = 0; rcat <= MAX_RCAT; rcat++) {
expandTemplate(template, true, rcat, nargs, 0, 0);
if (ALL_ARG_TYPES)  break;
expandTemplateForPrims(template, true, rcat, nargs, 1, 1);
if (ALL_RETURN_TYPES)  break;
}
}
}
static String catstr(int rcat, int nrefs, int nints, int nlongs) {
int nargs = nrefs + nints + nlongs;
String cat = TCHARS[rcat] + nargs;
if (!ALL_ARG_TYPES)  cat += (nints==0?"":"I"+nints)+(nlongs==0?"":"J"+nlongs);
return cat;
}
static void expandTemplateForPrims(String[] template, boolean topLevel, int rcat, int nargs, int minints, int minlongs) {
for (int isLong = 0; isLong <= 1; isLong++) {
for (int nprims = 1; nprims <= nargs; nprims++) {
int nrefs = nargs - nprims;
int nints = ((1-isLong) * nprims);
int nlongs = (isLong * nprims);
expandTemplate(template, topLevel, rcat, nrefs, nints, nlongs);
}
}
}
static void expandTemplate(String[] template, boolean topLevel,
int rcat, int nrefs, int nints, int nlongs) {
int nargs = nrefs + nints + nlongs;
if (nrefs > MAX_REFS || nints > MAX_INTS || nlongs > MAX_LONGS)  return;
VAR.makeBindings(topLevel, rcat, nrefs, nints, nlongs);
if (topLevel && !done.add(VAR.cat.binding)) {
System.out.println("    //repeat "+VAR.cat.binding);
return;
}
for (int i = 0; i < template.length; i++) {
String line = template[i];
if (line.endsWith("@each-cat@")) {
// ignore
} else if (line.endsWith("@each-R@")) {
int blockEnd = indexAfter(template, i, "@end-R@");
String[] block = stringsIn(template, i+1, blockEnd-1);
for (int rcat1 = rcat; rcat1 <= MAX_RCAT; rcat1++)
expandTemplate(block, false, rcat1, nrefs, nints, nlongs);
VAR.makeBindings(topLevel, rcat, nrefs, nints, nlongs);
i = blockEnd-1; continue;
} else if (line.endsWith("@each-Tv@")) {
int blockEnd = indexAfter(template, i, "@end-Tv@");
String[] block = stringsIn(template, i+1, blockEnd-1);
expandTemplate(block, false, rcat, nrefs, nints, nlongs);
expandTemplateForPrims(block, false, rcat, nargs, nints+1, nlongs+1);
VAR.makeBindings(topLevel, rcat, nrefs, nints, nlongs);
i = blockEnd-1; continue;
} else {
System.out.println(VAR.transform(line));
}
}
}
}
//}}} */
@:native('java$lang$invoke$FromGeneric$A0') @:internal extern class FromGeneric_A0 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A0;
	
	@:overload private function invoke_L0() : Dynamic;
	
	@:overload private function invoke_I0() : Dynamic;
	
	@:overload private function invoke_J0() : Dynamic;
	
	@:overload private function invoke_F0() : Dynamic;
	
	@:overload private function invoke_D0() : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A1') @:internal extern class FromGeneric_A1 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A1;
	
	@:overload private function invoke_L1(a0 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I1(a0 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J1(a0 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F1(a0 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D1(a0 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A2') @:internal extern class FromGeneric_A2 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A2;
	
	@:overload private function invoke_L2(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I2(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J2(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F2(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D2(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A3') @:internal extern class FromGeneric_A3 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A3;
	
	@:overload private function invoke_L3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A4') @:internal extern class FromGeneric_A4 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A4;
	
	@:overload private function invoke_L4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A5') @:internal extern class FromGeneric_A5 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A5;
	
	@:overload private function invoke_L5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A6') @:internal extern class FromGeneric_A6 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A6;
	
	@:overload private function invoke_L6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A7') @:internal extern class FromGeneric_A7 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A7;
	
	@:overload private function invoke_L7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A8') @:internal extern class FromGeneric_A8 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A8;
	
	@:overload private function invoke_L8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A9') @:internal extern class FromGeneric_A9 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A9;
	
	@:overload private function invoke_L9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	
}
@:native('java$lang$invoke$FromGeneric$A10') @:internal extern class FromGeneric_A10 extends java.lang.invoke.FromGeneric.FromGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : java.lang.invoke.FromGeneric.FromGeneric_A10;
	
	@:overload private function invoke_L10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload private function invoke_J10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload private function invoke_F10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload private function invoke_D10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	
}
