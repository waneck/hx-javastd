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
@:internal extern class ToGeneric
{
	/** Build an adapter of the given type, which invokes genericTarget
	*  on the incoming arguments, after boxing as necessary.
	*  The return value is unboxed if necessary.
	* @param type  the required type of the
	* @param genericTarget the target, which must accept and return only Object values
	* @return an adapter method handle
	*/
	@:overload public static function make(type : java.lang.invoke.MethodType, genericTarget : java.lang.invoke.MethodHandle) : java.lang.invoke.MethodHandle;
	
	
}
/**
* The invoke method takes some particular but unconstrained spread
* of raw argument types, and returns a raw return type (in L/I/J/F/D).
* Internally, it converts the incoming arguments uniformly into objects.
* This series of objects is then passed to the {@code target} method,
* which returns a result object.  This result is finally converted,
* via another method handle {@code convert}, which is responsible for
* converting the object result into the raw return value.
*/
@:native('java$lang$invoke$ToGeneric$Adapter') @:internal extern class ToGeneric_Adapter extends java.lang.invoke.BoundMethodHandle
{
	/*
	* class X<<R,A...>> extends Adapter {
	*   Object...=>Object target;
	*   Object=>R convert;
	*   R invoke(A... a...) = convert(invoker(target, a...)))
	* }
	*/
	private var invoker(default, null) : java.lang.invoke.MethodHandle;
	
	private var convert(default, null) : java.lang.invoke.MethodHandle;
	
	@:overload private function isPrototype() : Bool;
	
	/* Prototype constructor. */
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function prototypeEntryPoint() : java.lang.invoke.MethodHandle;
	
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle, invoker : java.lang.invoke.MethodHandle, convert : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : Void;
	
	/** Make a copy of self, with new fields. */
	@:overload @:abstract private function makeInstance(entryPoint : java.lang.invoke.MethodHandle, invoker : java.lang.invoke.MethodHandle, convert : java.lang.invoke.MethodHandle, target : java.lang.invoke.MethodHandle) : ToGeneric_Adapter;
	
	@:overload private function target() : Dynamic;
	
	@:overload private function target(a0 : Dynamic) : Dynamic;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	/*
	protected Object target_0(Object... av) throws Throwable { return invoker.invokeExact(target, av); }
	protected Object target_1(Object a0, Object... av)
	throws Throwable { return invoker.invokeExact(target, a0, (Object)av); }
	protected Object target_2(Object a0, Object a1, Object... av)
	throws Throwable { return invoker.invokeExact(target, a0, a1, (Object)av); }
	protected Object target_3(Object a0, Object a1, Object a2, Object... av)
	throws Throwable { return invoker.invokeExact(target, a0, a1, a2, (Object)av); }
	protected Object target_4(Object a0, Object a1, Object a2, Object a3, Object... av)
	throws Throwable { return invoker.invokeExact(target, a0, a1, a2, a3, (Object)av); }
	// */
	@:overload private function return_L(res : Dynamic) : Dynamic;
	
	@:overload private function return_I(res : Dynamic) : Int;
	
	@:overload private function return_J(res : Dynamic) : haxe.Int64;
	
	@:overload private function return_F(res : Dynamic) : Single;
	
	@:overload private function return_D(res : Dynamic) : Float;
	
	
}
/*
: SHELL; n=ToGeneric; cp -p $n.java $n.java-; sed < $n.java- > $n.java+ -e '/{{*{{/,/}}*}}/w /tmp/genclasses.java' -e '/}}*}}/q'; (cd /tmp; javac -d . genclasses.java; java -cp . genclasses) >> $n.java+; echo '}' >> $n.java+; mv $n.java+ $n.java; mv $n.java- $n.java~
//{{{
import java.util.*;
class genclasses {
static String[] TYPES = { "Object", "int   ", "long  ", "float ", "double" };
static String[] TCHARS = { "L",     "I",      "J",      "F",      "D",     "A" };
static String[][] TEMPLATES = { {
"@for@ arity=0..3   rcat<=4 nrefs<=99 nints<=99 nlongs<=99",
"@for@ arity=4..4   rcat<=4 nrefs<=99 nints<=99 nlongs<=99",
"@for@ arity=5..5   rcat<=2 nrefs<=99 nints<=99 nlongs<=99",
"@for@ arity=6..10  rcat<=2 nrefs<=99 nints=0   nlongs<=99",
"    //@each-cat@",
"    static class @cat@ extends Adapter {",
"        protected @cat@(MethodHandle entryPoint) { super(entryPoint); }  // to build prototype",
"        protected @cat@(MethodHandle e, MethodHandle i, MethodHandle c, MethodHandle t) { super(e, i, c, t); }",
"        protected @cat@ makeInstance(MethodHandle e, MethodHandle i, MethodHandle c, MethodHandle t) { return new @cat@(e, i, c, t); }",
"        protected Object target(@Ovav@)   throws Throwable { return invoker.invokeExact(target@comma@@av@); }",
"        //@each-Tv@",
"        protected Object target@cat@(@Tvav@) throws Throwable { return target(@av@); }",
"        //@end-Tv@",
"        //@each-Tv@",
"        //@each-R@",
"        protected @R@ invoke_@Rc@(@Tvav@) throws Throwable { return return_@Rc@(target@cat@(@av@)); }",
"        //@end-R@",
"        //@end-Tv@",
"    }",
} };
enum VAR {
cat, R, Rc, Tv, av, comma, Tvav, Ovav;
public final String pattern = "@"+toString().replace('_','.')+"@";
public String binding;
static void makeBindings(boolean topLevel, int rcat, int nrefs, int nints, int nlongs) {
int nargs = nrefs + nints + nlongs;
if (topLevel)
VAR.cat.binding = catstr(ALL_RETURN_TYPES ? TYPES.length : rcat, nrefs, nints, nlongs);
VAR.R.binding = TYPES[rcat];
VAR.Rc.binding = TCHARS[rcat];
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
VAR.Tv.binding = comma(Tv);
VAR.av.binding = comma(av);
VAR.comma.binding = (av.length == 0 ? "" : ", ");
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
@:native('java$lang$invoke$ToGeneric$A0') @:internal extern class ToGeneric_A0 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A0;
	
	@:overload override private function target() : Dynamic;
	
	@:overload private function targetA0() : Dynamic;
	
	@:overload private function invoke_L() : Dynamic;
	
	@:overload private function invoke_I() : Int;
	
	@:overload private function invoke_J() : haxe.Int64;
	
	@:overload private function invoke_F() : Single;
	
	@:overload private function invoke_D() : Float;
	
	
}
@:native('java$lang$invoke$ToGeneric$A1') @:internal extern class ToGeneric_A1 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A1;
	
	@:overload override private function target(a0 : Dynamic) : Dynamic;
	
	@:overload private function targetA1(a0 : Dynamic) : Dynamic;
	
	@:overload private function targetA1(a0 : Int) : Dynamic;
	
	@:overload private function targetA1(a0 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic) : Float;
	
	@:overload private function invoke_L(a0 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Int) : Float;
	
	@:overload private function invoke_L(a0 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : haxe.Int64) : Float;
	
	
}
@:native('java$lang$invoke$ToGeneric$A2') @:internal extern class ToGeneric_A2 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A2;
	
	@:overload override private function target(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload private function targetA2(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload private function targetA2(a0 : Dynamic, a1 : Int) : Dynamic;
	
	@:overload private function targetA2(a0 : Int, a1 : Int) : Dynamic;
	
	@:overload private function targetA2(a0 : Dynamic, a1 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA2(a0 : haxe.Int64, a1 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Int, a1 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Int, a1 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Int, a1 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Int, a1 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Int, a1 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : haxe.Int64) : Float;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : haxe.Int64, a1 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : haxe.Int64, a1 : haxe.Int64) : Float;
	
	
}
@:native('java$lang$invoke$ToGeneric$A3') @:internal extern class ToGeneric_A3 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A3;
	
	@:overload override private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload private function targetA3(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload private function targetA3(a0 : Dynamic, a1 : Dynamic, a2 : Int) : Dynamic;
	
	@:overload private function targetA3(a0 : Dynamic, a1 : Int, a2 : Int) : Dynamic;
	
	@:overload private function targetA3(a0 : Int, a1 : Int, a2 : Int) : Dynamic;
	
	@:overload private function targetA3(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA3(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA3(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic, a2 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic, a2 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Int, a2 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Int, a2 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Int, a2 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Int, a2 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Int, a2 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Int, a1 : Int, a2 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Int, a1 : Int, a2 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Int, a1 : Int, a2 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Int, a1 : Int, a2 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Int, a1 : Int, a2 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64) : Float;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64) : Float;
	
	
}
@:native('java$lang$invoke$ToGeneric$A4') @:internal extern class ToGeneric_A4 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A4;
	
	@:overload override private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload private function targetA4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload private function targetA4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int) : Dynamic;
	
	@:overload private function targetA4(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int) : Dynamic;
	
	@:overload private function targetA4(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int) : Dynamic;
	
	@:overload private function targetA4(a0 : Int, a1 : Int, a2 : Int, a3 : Int) : Dynamic;
	
	@:overload private function targetA4(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA4(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA4(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA4(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Int, a1 : Int, a2 : Int, a3 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Int, a1 : Int, a2 : Int, a3 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Int, a1 : Int, a2 : Int, a3 : Int) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Int, a1 : Int, a2 : Int, a3 : Int) : Single;
	
	@:overload private function invoke_D(a0 : Int, a1 : Int, a2 : Int, a3 : Int) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64) : Float;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Float;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_F(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Single;
	
	@:overload private function invoke_D(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64) : Float;
	
	
}
@:native('java$lang$invoke$ToGeneric$A5') @:internal extern class ToGeneric_A5 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A5;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Int) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int, a4 : Int) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int, a4 : Int) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int, a4 : Int) : Dynamic;
	
	@:overload private function targetA5(a0 : Int, a1 : Int, a2 : Int, a3 : Int, a4 : Int) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA5(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA5(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Int) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int, a4 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int, a4 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Int, a4 : Int) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int, a4 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int, a4 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Int, a3 : Int, a4 : Int) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int, a4 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int, a4 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Int, a2 : Int, a3 : Int, a4 : Int) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Int, a1 : Int, a2 : Int, a3 : Int, a4 : Int) : Dynamic;
	
	@:overload private function invoke_I(a0 : Int, a1 : Int, a2 : Int, a3 : Int, a4 : Int) : Int;
	
	@:overload private function invoke_J(a0 : Int, a1 : Int, a2 : Int, a3 : Int, a4 : Int) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64) : haxe.Int64;
	
	
}
@:native('java$lang$invoke$ToGeneric$A6') @:internal extern class ToGeneric_A6 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A6;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload private function targetA6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload private function targetA6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA6(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA6(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA6(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA6(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64) : haxe.Int64;
	
	
}
@:native('java$lang$invoke$ToGeneric$A7') @:internal extern class ToGeneric_A7 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A7;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload private function targetA7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload private function targetA7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA7(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA7(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA7(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA7(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64) : haxe.Int64;
	
	
}
@:native('java$lang$invoke$ToGeneric$A8') @:internal extern class ToGeneric_A8 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A8;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload private function targetA8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload private function targetA8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA8(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA8(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA8(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA8(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64) : haxe.Int64;
	
	
}
@:native('java$lang$invoke$ToGeneric$A9') @:internal extern class ToGeneric_A9 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A9;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA9(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA9(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64, a8 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64) : haxe.Int64;
	
	
}
@:native('java$lang$invoke$ToGeneric$A10') @:internal extern class ToGeneric_A10 extends ToGeneric_Adapter
{
	@:overload private function new(entryPoint : java.lang.invoke.MethodHandle) : Void;
	
	@:overload private function new(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : Void;
	
	@:overload override private function makeInstance(e : java.lang.invoke.MethodHandle, i : java.lang.invoke.MethodHandle, c : java.lang.invoke.MethodHandle, t : java.lang.invoke.MethodHandle) : ToGeneric_A10;
	
	@:overload private function target(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function targetA10(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : Dynamic) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : Dynamic, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : Dynamic, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : Dynamic, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : Dynamic, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : Dynamic, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : Dynamic, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : Dynamic, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	@:overload private function invoke_L(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Dynamic;
	
	@:overload private function invoke_I(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : Int;
	
	@:overload private function invoke_J(a0 : haxe.Int64, a1 : haxe.Int64, a2 : haxe.Int64, a3 : haxe.Int64, a4 : haxe.Int64, a5 : haxe.Int64, a6 : haxe.Int64, a7 : haxe.Int64, a8 : haxe.Int64, a9 : haxe.Int64) : haxe.Int64;
	
	
}
