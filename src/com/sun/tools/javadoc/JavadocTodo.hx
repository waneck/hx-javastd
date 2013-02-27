package com.sun.tools.javadoc;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
*  Javadoc's own todo queue doesn't queue its inputs, as javadoc
*  doesn't perform attribution of method bodies or semantic checking.
*  @author Neal Gafter
*/
extern class JavadocTodo extends com.sun.tools.javac.comp.Todo
{
	@:overload public static function preRegister(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload override public function append(e : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Void;
	
	@:overload override public function offer(e : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Bool;
	
	
}
