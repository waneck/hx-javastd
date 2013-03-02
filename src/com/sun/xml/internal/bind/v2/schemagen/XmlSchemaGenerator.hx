package com.sun.xml.internal.bind.v2.schemagen;
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
extern class XmlSchemaGenerator<T, C, F, M>
{
	@:overload public function new(navigator : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, F, M>, types : com.sun.xml.internal.bind.v2.model.core.TypeInfoSet<T, C, F, M>) : Void;
	
	/**
	* Adds a new class to the list of classes to be written.
	*
	* <p>
	* A {@link ClassInfo} may have two namespaces --- one for the element name
	* and the other for the type name. If they are different, we put the same
	* {@link ClassInfo} to two {@link Namespace}s.
	*/
	@:overload public function add(clazz : com.sun.xml.internal.bind.v2.model.core.ClassInfo<T, C>) : Void;
	
	/**
	* Adds a new element to the list of elements to be written.
	*/
	@:overload public function add(elem : com.sun.xml.internal.bind.v2.model.core.ElementInfo<T, C>) : Void;
	
	@:overload public function add(envm : com.sun.xml.internal.bind.v2.model.core.EnumLeafInfo<T, C>) : Void;
	
	@:overload public function add(a : com.sun.xml.internal.bind.v2.model.core.ArrayInfo<T, C>) : Void;
	
	/**
	* Adds an additional element declaration.
	*
	* @param tagName
	*      The name of the element declaration to be added.
	* @param type
	*      The type this element refers to.
	*      Can be null, in which case the element refers to an empty anonymous complex type.
	*/
	@:overload public function add(tagName : javax.xml.namespace.QName, isNillable : Bool, type : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>) : Void;
	
	/**
	* Writes out the episode file.
	*/
	@:overload public function writeEpisodeFile(out : com.sun.xml.internal.txw2.output.XmlSerializer) : Void;
	
	/**
	* Write out the schema documents.
	*/
	@:overload public function write(resolver : javax.xml.bind.SchemaOutputResolver, errorListener : com.sun.xml.internal.bind.api.ErrorListener) : Void;
	
	/**
	* Debug information of what's in this {@link XmlSchemaGenerator}.
	*/
	@:overload public function toString() : String;
	
	/**
	* Relativizes a URI by using another URI (base URI.)
	*
	* <p>
	* For example, {@code relative("http://www.sun.com/abc/def","http://www.sun.com/pqr/stu") => "../abc/def"}
	*
	* <p>
	* This method only works on hierarchical URI's, not opaque URI's (refer to the
	* <a href="http://java.sun.com/j2se/1.5.0/docs/api/java/net/URI.html">java.net.URI</a>
	* javadoc for complete definitions of these terms.
	*
	* <p>
	* This method will not normalize the relative URI.
	*
	* @return the relative URI or the original URI if a relative one could not be computed
	*/
	@:overload private static function relativize(uri : String, baseUri : String) : String;
	
	
}
/**
* Schema components are organized per namespace.
*/
@:native('com$sun$xml$internal$bind$v2$schemagen$XmlSchemaGenerator$Namespace') @:internal extern class XmlSchemaGenerator_Namespace
{
	@:overload public function new(uri : String) : Void;
	
	@:overload public function addGlobalAttribute(ap : com.sun.xml.internal.bind.v2.model.core.AttributePropertyInfo<Dynamic, Dynamic>) : Void;
	
	@:overload public function addGlobalElement(tref : com.sun.xml.internal.bind.v2.model.core.TypeRef<Dynamic, Dynamic>) : Void;
	
	@:overload public function toString() : String;
	
	
}
/**
* Represents a global element declaration to be written.
*
* <p>
* Because multiple properties can name the same global element even if
* they have different Java type, the schema generator first needs to
* walk through the model and decide what to generate for the given
* element declaration.
*
* <p>
* This class represents what will be written, and its {@link #equals(Object)}
* method is implemented in such a way that two identical declarations
* are considered as the same.
*/
@:native('com$sun$xml$internal$bind$v2$schemagen$XmlSchemaGenerator$Namespace$ElementDeclaration') @:internal extern class XmlSchemaGenerator_Namespace_ElementDeclaration
{
	/**
	* Returns true if two {@link ElementDeclaration}s are representing
	* the same schema fragment.
	*/
	@:overload @:abstract public function equals(o : Dynamic) : Bool;
	
	@:overload @:abstract public function hashCode() : Int;
	
	/**
	* Generates the declaration.
	*/
	@:overload @:abstract public function writeTo(localName : String, schema : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema) : Void;
	
	
}
/**
* {@link ElementDeclaration} that refers to a {@link NonElement}.
*/
@:native('com$sun$xml$internal$bind$v2$schemagen$XmlSchemaGenerator$Namespace$ElementWithType') @:internal extern class XmlSchemaGenerator_Namespace_ElementWithType extends com.sun.xml.internal.bind.v2.schemagen.XmlSchemaGenerator.XmlSchemaGenerator_Namespace_ElementDeclaration
{
	@:overload public function new(nillable : Bool, type : com.sun.xml.internal.bind.v2.model.core.NonElement<Dynamic, Dynamic>) : Void;
	
	@:overload override public function writeTo(localName : String, schema : com.sun.xml.internal.bind.v2.schemagen.xmlschema.Schema) : Void;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	
}
