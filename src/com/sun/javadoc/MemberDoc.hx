package com.sun.javadoc;
/*
* Copyright (c) 1998, Oracle and/or its affiliates. All rights reserved.
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
* Represents a member of a java class: field, constructor, or method.
* This is an abstract class dealing with information common to
* method, constructor and field members. Class members of a class
* (innerclasses) are represented instead by ClassDoc.
*
* @see MethodDoc
* @see FieldDoc
* @see ClassDoc
*
* @author Kaiyang Liu (original)
* @author Robert Field (rewrite)
*/
extern interface MemberDoc extends com.sun.javadoc.ProgramElementDoc
{
	/**
	* Returns true if this member was synthesized by the compiler.
	*/
	@:overload public function isSynthetic() : Bool;
	
	
}
