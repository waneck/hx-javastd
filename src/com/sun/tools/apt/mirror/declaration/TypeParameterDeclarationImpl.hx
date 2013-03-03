package com.sun.tools.apt.mirror.declaration;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Implementation of TypeParameterDeclaration
*/
extern class TypeParameterDeclarationImpl extends com.sun.tools.apt.mirror.declaration.DeclarationImpl implements com.sun.mirror.declaration.TypeParameterDeclaration
{
	@:protected private var sym : TypeSymbol;
	
	/**
	* Returns the type parameter's name along with any "extends" clause.
	* Class names are qualified.  No implicit "extends Object" is added.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getBounds() : java.util.Collection<com.sun.mirror.type.ReferenceType>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getOwner() : com.sun.mirror.declaration.Declaration;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function accept(v : com.sun.mirror.util.DeclarationVisitor) : Void;
	
	
}
