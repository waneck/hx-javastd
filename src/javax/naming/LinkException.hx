package javax.naming;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
* This exception is used to describe problems encounter while resolving links.
* Addition information is added to the base NamingException for pinpointing
* the problem with the link.
*<p>
* Analogous to how NamingException captures name resolution information,
* LinkException captures "link"-name resolution information pinpointing
* the problem encountered while resolving a link. All these fields may
* be null.
* <ul>
* <li> Link Resolved Name. Portion of link name that has been resolved.
* <li> Link Resolved Object. Object to which resolution of link name proceeded.
* <li> Link Remaining Name. Portion of link name that has not been resolved.
* <li> Link Explanation. Detail explaining why link resolution failed.
*</ul>
*
*<p>
* A LinkException instance is not synchronized against concurrent
* multithreaded access. Multiple threads trying to access and modify
* a single LinkException instance should lock the object.
*
* @author Rosanna Lee
* @author Scott Seligman
*
* @see Context#lookupLink
* @see LinkRef
* @since 1.3
*/
/*<p>
* The serialized form of a LinkException object consists of the
* serialized fields of its NamingException superclass, the link resolved
* name (a Name object), the link resolved object, link remaining name
* (a Name object), and the link explanation String.
*/
@:require(java3) extern class LinkException extends javax.naming.NamingException
{
	/**
	* Contains the part of the link that has been successfully resolved.
	* It is a composite name and can be null.
	* This field is initialized by the constructors.
	* You should access and manipulate this field
	* through its get and set methods.
	* @serial
	* @see #getLinkResolvedName
	* @see #setLinkResolvedName
	*/
	@:protected private var linkResolvedName : javax.naming.Name;
	
	/**
	* Contains the object to which resolution of the part of the link was successful.
	* Can be null. This field is initialized by the constructors.
	* You should access and manipulate this field
	* through its get and set methods.
	* @serial
	* @see #getLinkResolvedObj
	* @see #setLinkResolvedObj
	*/
	@:protected private var linkResolvedObj : Dynamic;
	
	/**
	* Contains the remaining link name that has not been resolved yet.
	* It is a composite name and can be null.
	* This field is initialized by the constructors.
	* You should access and manipulate this field
	* through its get and set methods.
	* @serial
	* @see #getLinkRemainingName
	* @see #setLinkRemainingName
	*/
	@:protected private var linkRemainingName : javax.naming.Name;
	
	/**
	* Contains the exception of why resolution of the link failed.
	* Can be null. This field is initialized by the constructors.
	* You should access and manipulate this field
	* through its get and set methods.
	* @serial
	* @see #getLinkExplanation
	* @see #setLinkExplanation
	*/
	@:protected private var linkExplanation : String;
	
	/**
	* Constructs a new instance of LinkException with an explanation
	* All the other fields are initialized to null.
	* @param  explanation     A possibly null string containing additional
	*                         detail about this exception.
	* @see java.lang.Throwable#getMessage
	*/
	@:overload @:public public function new(explanation : String) : Void;
	
	/**
	* Constructs a new instance of LinkException.
	* All the non-link-related and link-related fields are initialized to null.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Retrieves the leading portion of the link name that was resolved
	* successfully.
	*
	* @return The part of the link name that was resolved successfully.
	*          It is a composite name. It can be null, which means
	*          the link resolved name field has not been set.
	* @see #getLinkResolvedObj
	* @see #setLinkResolvedName
	*/
	@:overload @:public public function getLinkResolvedName() : javax.naming.Name;
	
	/**
	* Retrieves the remaining unresolved portion of the link name.
	* @return The part of the link name that has not been resolved.
	*          It is a composite name. It can be null, which means
	*          the link remaining name field has not been set.
	* @see #setLinkRemainingName
	*/
	@:overload @:public public function getLinkRemainingName() : javax.naming.Name;
	
	/**
	* Retrieves the object to which resolution was successful.
	* This is the object to which the resolved link name is bound.
	*
	* @return The possibly null object that was resolved so far.
	* If null, it means the link resolved object field has not been set.
	* @see #getLinkResolvedName
	* @see #setLinkResolvedObj
	*/
	@:overload @:public public function getLinkResolvedObj() : Dynamic;
	
	/**
	* Retrieves the explanation associated with the problem encounter
	* when resolving a link.
	*
	* @return The possibly null detail string explaining more about the problem
	* with resolving a link.
	*         If null, it means there is no
	*         link detail message for this exception.
	* @see #setLinkExplanation
	*/
	@:overload @:public public function getLinkExplanation() : String;
	
	/**
	* Sets the explanation associated with the problem encounter
	* when resolving a link.
	*
	* @param msg The possibly null detail string explaining more about the problem
	* with resolving a link. If null, it means no detail will be recorded.
	* @see #getLinkExplanation
	*/
	@:overload @:public public function setLinkExplanation(msg : String) : Void;
	
	/**
	* Sets the resolved link name field of this exception.
	*<p>
	* <tt>name</tt> is a composite name. If the intent is to set
	* this field using a compound name or string, you must
	* "stringify" the compound name, and create a composite
	* name with a single component using the string. You can then
	* invoke this method using the resulting composite name.
	*<p>
	* A copy of <code>name</code> is made and stored.
	* Subsequent changes to <code>name</code> does not
	* affect the copy in this NamingException and vice versa.
	*
	*
	* @param name The name to set resolved link name to. This can be null.
	*          If null, it sets the link resolved name field to null.
	* @see #getLinkResolvedName
	*/
	@:overload @:public public function setLinkResolvedName(name : javax.naming.Name) : Void;
	
	/**
	* Sets the remaining link name field of this exception.
	*<p>
	* <tt>name</tt> is a composite name. If the intent is to set
	* this field using a compound name or string, you must
	* "stringify" the compound name, and create a composite
	* name with a single component using the string. You can then
	* invoke this method using the resulting composite name.
	*<p>
	* A copy of <code>name</code> is made and stored.
	* Subsequent changes to <code>name</code> does not
	* affect the copy in this NamingException and vice versa.
	*
	* @param name The name to set remaining link name to. This can be null.
	*  If null, it sets the remaining name field to null.
	* @see #getLinkRemainingName
	*/
	@:overload @:public public function setLinkRemainingName(name : javax.naming.Name) : Void;
	
	/**
	* Sets the link resolved object field of this exception.
	* This indicates the last successfully resolved object of link name.
	* @param obj The object to set link resolved object to. This can be null.
	*            If null, the link resolved object field is set to null.
	* @see #getLinkResolvedObj
	*/
	@:overload @:public public function setLinkResolvedObj(obj : Dynamic) : Void;
	
	/**
	* Generates the string representation of this exception.
	* This string consists of the NamingException information plus
	* the link's remaining name.
	* This string is used for debugging and not meant to be interpreted
	* programmatically.
	* @return The non-null string representation of this link exception.
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* Generates the string representation of this exception.
	* This string consists of the NamingException information plus
	* the additional information of resolving the link.
	* If 'detail' is true, the string also contains information on
	* the link resolved object. If false, this method is the same
	* as the form of toString() that accepts no parameters.
	* This string is used for debugging and not meant to be interpreted
	* programmatically.
	*
	* @param   detail  If true, add information about the link resolved
	*                  object.
	* @return The non-null string representation of this link exception.
	*/
	@:overload @:public override public function toString(detail : Bool) : String;
	
	
}
