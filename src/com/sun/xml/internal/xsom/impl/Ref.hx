package com.sun.xml.internal.xsom.impl;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Ref
{
	
}
/**
* Reference to other schema components.
*
* <p>
* There are mainly two different types of references. One is
* the direct reference, which is only possible when schema components
* are already available when references are made.
* The other is the lazy reference, which keeps references by names
* and later look for the component by name.
*
* <p>
* This class defines interfaces that define the behavior of such
* references and classes that implement direct reference semantics.
*
* @author Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
@:native('com$sun$xml$internal$xsom$impl$Ref$Term') extern interface Ref_Term
{
	/** Obtains a reference as a term. */
	@:overload public function getTerm() : com.sun.xml.internal.xsom.XSTerm;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$Ref$Type') extern interface Ref_Type
{
	/** Obtains a reference as a type. */
	@:overload public function getType() : com.sun.xml.internal.xsom.XSType;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$Ref$ContentType') extern interface Ref_ContentType
{
	@:overload public function getContentType() : com.sun.xml.internal.xsom.XSContentType;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$Ref$SimpleType') extern interface Ref_SimpleType extends Ref_Type
{
	@:overload public function getType() : com.sun.xml.internal.xsom.XSSimpleType;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$Ref$ComplexType') extern interface Ref_ComplexType extends Ref_Type
{
	@:overload public function getType() : com.sun.xml.internal.xsom.XSComplexType;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$Ref$Attribute') extern interface Ref_Attribute
{
	@:overload public function getAttribute() : com.sun.xml.internal.xsom.XSAttributeDecl;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$Ref$AttGroup') extern interface Ref_AttGroup
{
	@:overload public function get() : com.sun.xml.internal.xsom.XSAttGroupDecl;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$Ref$Element') extern interface Ref_Element extends Ref_Term
{
	@:overload public function get() : com.sun.xml.internal.xsom.XSElementDecl;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$Ref$IdentityConstraint') extern interface Ref_IdentityConstraint
{
	@:overload public function get() : com.sun.xml.internal.xsom.XSIdentityConstraint;
	
	
}
