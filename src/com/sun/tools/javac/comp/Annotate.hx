package com.sun.tools.javac.comp;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
/** Enter annotations on symbols.  Annotations accumulate in a queue,
*  which is processed at the top level of any set of recursive calls
*  requesting it be processed.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Annotate
{
	@:protected @:static @:final private static var annotateKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.comp.Annotate>;
	
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.comp.Annotate;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:public public function later(a : com.sun.tools.javac.comp.Annotate.Annotate_Annotator) : Void;
	
	@:overload @:public public function earlier(a : com.sun.tools.javac.comp.Annotate.Annotate_Annotator) : Void;
	
	/** Called when the Enter phase starts. */
	@:overload @:public public function enterStart() : Void;
	
	/** Called after the Enter phase completes. */
	@:overload @:public public function enterDone() : Void;
	
	@:overload @:public public function flush() : Void;
	
	
}
/** A client that has annotations to add registers an annotator,
*  the method it will use to add the annotation.  There are no
*  parameters; any needed data should be captured by the
*  Annotator.
*/
@:native('com$sun$tools$javac$comp$Annotate$Annotator') extern interface Annotate_Annotator
{
	@:overload public function enterAnnotation() : Void;
	
	
}
