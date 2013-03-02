package javax.swing.text;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface AttributeSet
{
	/**
	* Returns the number of attributes that are defined locally in this set.
	* Attributes that are defined in the parent set are not included.
	*
	* @return the number of attributes >= 0
	*/
	@:overload public function getAttributeCount() : Int;
	
	/**
	* Checks whether the named attribute has a value specified in
	* the set without resolving through another attribute
	* set.
	*
	* @param attrName the attribute name
	* @return true if the attribute has a value specified
	*/
	@:overload public function isDefined(attrName : Dynamic) : Bool;
	
	/**
	* Determines if the two attribute sets are equivalent.
	*
	* @param attr an attribute set
	* @return true if the sets are equivalent
	*/
	@:overload public function isEqual(attr : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Returns an attribute set that is guaranteed not
	* to change over time.
	*
	* @return a copy of the attribute set
	*/
	@:overload public function copyAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Fetches the value of the given attribute. If the value is not found
	* locally, the search is continued upward through the resolving
	* parent (if one exists) until the value is either
	* found or there are no more parents.  If the value is not found,
	* null is returned.
	*
	* @param key the non-null key of the attribute binding
	* @return the value of the attribute, or {@code null} if not found
	*/
	@:overload public function getAttribute(key : Dynamic) : Dynamic;
	
	/**
	* Returns an enumeration over the names of the attributes that are
	* defined locally in the set. Names of attributes defined in the
	* resolving parent, if any, are not included. The values of the
	* <code>Enumeration</code> may be anything and are not constrained to
	* a particular <code>Object</code> type.
	* <p>
	* This method never returns {@code null}. For a set with no attributes, it
	* returns an empty {@code Enumeration}.
	*
	* @return the names
	*/
	@:overload public function getAttributeNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Returns {@code true} if this set defines an attribute with the same
	* name and an equal value. If such an attribute is not found locally,
	* it is searched through in the resolving parent hierarchy.
	*
	* @param name the non-null attribute name
	* @param value the value
	* @return {@code true} if the set defines the attribute with an
	*     equal value, either locally or through its resolving parent
	* @throws NullPointerException if either {@code name} or
	*      {@code value} is {@code null}
	*/
	@:overload public function containsAttribute(name : Dynamic, value : Dynamic) : Bool;
	
	/**
	* Returns {@code true} if this set defines all the attributes from the
	* given set with equal values. If an attribute is not found locally,
	* it is searched through in the resolving parent hierarchy.
	*
	* @param attributes the set of attributes to check against
	* @return {@code true} if this set defines all the attributes with equal
	*              values, either locally or through its resolving parent
	* @throws NullPointerException if {@code attributes} is {@code null}
	*/
	@:overload public function containsAttributes(attributes : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Gets the resolving parent.
	*
	* @return the parent
	*/
	@:overload public function getResolveParent() : javax.swing.text.AttributeSet;
	
	
}
/**
* This interface is the type signature that is expected
* to be present on any attribute key that contributes to
* the determination of what font to use to render some
* text.  This is not considered to be a closed set, the
* definition can change across version of the platform and can
* be amended by additional user added entries that
* correspond to logical settings that are specific to
* some type of content.
*/
@:native('javax$swing$text$AttributeSet$FontAttribute') extern interface AttributeSet_FontAttribute
{
	
}
/**
* This interface is the type signature that is expected
* to be present on any attribute key that contributes to
* presentation of color.
*/
@:native('javax$swing$text$AttributeSet$ColorAttribute') extern interface AttributeSet_ColorAttribute
{
	
}
/**
* This interface is the type signature that is expected
* to be present on any attribute key that contributes to
* character level presentation.  This would be any attribute
* that applies to a so-called <term>run</term> of
* style.
*/
@:native('javax$swing$text$AttributeSet$CharacterAttribute') extern interface AttributeSet_CharacterAttribute
{
	
}
/**
* This interface is the type signature that is expected
* to be present on any attribute key that contributes to
* the paragraph level presentation.
*/
@:native('javax$swing$text$AttributeSet$ParagraphAttribute') extern interface AttributeSet_ParagraphAttribute
{
	
}
