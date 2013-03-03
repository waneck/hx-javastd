package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XSElementDecl implements com.sun.org.apache.xerces.internal.xs.XSElementDeclaration
{
	/**
	* The XML representation for an element declaration
	* schema component is an <element> element information item
	*
	* @xerces.internal
	*
	* @author Elena Litani, IBM
	* @author Sandy Gao, IBM
	* @version $Id: XSElementDecl.java,v 1.7 2010-11-01 04:39:55 joehw Exp $
	*/
	@:public @:final @:static public static var SCOPE_ABSENT(default, null) : java.StdTypes.Int16;
	
	@:public @:final @:static public static var SCOPE_GLOBAL(default, null) : java.StdTypes.Int16;
	
	@:public @:final @:static public static var SCOPE_LOCAL(default, null) : java.StdTypes.Int16;
	
	@:public public var fName : String;
	
	@:public public var fTargetNamespace : String;
	
	@:public public var fType : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	@:public public var fUnresolvedTypeName : com.sun.org.apache.xerces.internal.xni.QName;
	
	@:public public var fScope : java.StdTypes.Int16;
	
	@:public public var fBlock : java.StdTypes.Int16;
	
	@:public public var fFinal : java.StdTypes.Int16;
	
	@:public public var fAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:public public var fDefault : com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo;
	
	@:public public var fSubGroup : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl;
	
	@:overload @:public public function setConstraintType(constraintType : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function setIsNillable() : Void;
	
	@:overload @:public public function setIsAbstract() : Void;
	
	@:overload @:public public function setIsGlobal() : Void;
	
	@:overload @:public public function setIsLocal(enclosingCT : com.sun.org.apache.xerces.internal.impl.xs.XSComplexTypeDecl) : Void;
	
	@:overload @:public public function addIDConstraint(idc : com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint) : Void;
	
	@:overload @:public public function getIDConstraints() : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint>;
	
	@:overload @:public public function toString() : String;
	
	/**
	* get the hash code
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* whether two decls are the same
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Reset current element declaration
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Get the type of the object, i.e ELEMENT_DECLARATION.
	*/
	@:overload @:public public function getType() : java.StdTypes.Int16;
	
	/**
	* The <code>name</code> of this <code>XSObject</code> depending on the
	* <code>XSObject</code> type.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* The namespace URI of this node, or <code>null</code> if it is
	* unspecified.  defines how a namespace URI is attached to schema
	* components.
	*/
	@:overload @:public public function getNamespace() : String;
	
	/**
	* Either a simple type definition or a complex type definition.
	*/
	@:overload @:public public function getTypeDefinition() : com.sun.org.apache.xerces.internal.xs.XSTypeDefinition;
	
	/**
	* Optional. Either global or a complex type definition (
	* <code>ctDefinition</code>). This property is absent in the case of
	* declarations within named model groups: their scope will be
	* determined when they are used in the construction of complex type
	* definitions.
	*/
	@:overload @:public public function getScope() : java.StdTypes.Int16;
	
	/**
	* Locally scoped declarations are available for use only within the
	* complex type definition identified by the <code>scope</code>
	* property.
	*/
	@:overload @:public public function getEnclosingCTDefinition() : com.sun.org.apache.xerces.internal.xs.XSComplexTypeDefinition;
	
	/**
	* A value constraint: one of default, fixed.
	*/
	@:overload @:public public function getConstraintType() : java.StdTypes.Int16;
	
	/**
	* A value constraint: The actual value (with respect to the {type
	* definition})
	*/
	@:overload @:public public function getConstraintValue() : String;
	
	/**
	* If {nillable} is true, then an element may also be valid if it carries
	* the namespace qualified attribute with [local name] nil from
	* namespace http://www.w3.org/2001/XMLSchema-instance and value true
	* (see xsi:nil (2.6.2)) even if it has no text or element content
	* despite a {content type} which would otherwise require content.
	*/
	@:overload @:public public function getNillable() : Bool;
	
	/**
	* {identity-constraint definitions} A set of constraint definitions.
	*/
	@:overload @:public public function getIdentityConstraints() : com.sun.org.apache.xerces.internal.xs.XSNamedMap;
	
	/**
	* {substitution group affiliation} Optional. A top-level element
	* definition.
	*/
	@:overload @:public public function getSubstitutionGroupAffiliation() : com.sun.org.apache.xerces.internal.xs.XSElementDeclaration;
	
	/**
	* Convenience method. Check if <code>exclusion</code> is a substitution
	* group exclusion for this element declaration.
	* @param exclusion Extension, restriction or none. Represents final
	*   set for the element.
	* @return True if <code>exclusion</code> is a part of the substitution
	*   group exclusion subset.
	*/
	@:overload @:public public function isSubstitutionGroupExclusion(exclusion : java.StdTypes.Int16) : Bool;
	
	/**
	* Specifies if this declaration can be nominated as
	* the {substitution group affiliation} of other
	* element declarations having the same {type definition}
	* or types derived therefrom.
	*
	* @return A bit flag representing {extension, restriction} or NONE.
	*/
	@:overload @:public public function getSubstitutionGroupExclusions() : java.StdTypes.Int16;
	
	/**
	* Convenience method. Check if <code>disallowed</code> is a disallowed
	* substitution for this element declaration.
	* @param disallowed Substitution, extension, restriction or none.
	*   Represents a block set for the element.
	* @return True if <code>disallowed</code> is a part of the substitution
	*   group exclusion subset.
	*/
	@:overload @:public public function isDisallowedSubstitution(disallowed : java.StdTypes.Int16) : Bool;
	
	/**
	* The supplied values for {disallowed substitutions}
	*
	* @return A bit flag representing {substitution, extension, restriction} or NONE.
	*/
	@:overload @:public public function getDisallowedSubstitutions() : java.StdTypes.Int16;
	
	/**
	* {abstract} A boolean.
	*/
	@:overload @:public public function getAbstract() : Bool;
	
	/**
	* Optional. Annotation.
	*/
	@:overload @:public public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* Optional. Annotations.
	*/
	@:overload @:public public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* @see org.apache.xerces.xs.XSObject#getNamespaceItem()
	*/
	@:overload @:public public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	@:overload @:public public function getActualVC() : Dynamic;
	
	@:overload @:public public function getActualVCType() : java.StdTypes.Int16;
	
	@:overload @:public public function getItemValueTypes() : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	
}
