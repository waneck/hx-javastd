package sun.security.x509;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
* Represent the GeneralSubtrees ASN.1 object.
* <p>
* The ASN.1 for this is
* <pre>
* GeneralSubtrees ::= SEQUENCE SIZE (1..MAX) OF GeneralSubtree
* </pre>
* </p>
*
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @author Andreas Sterbenz
*/
extern class GeneralSubtrees implements java.lang.Cloneable
{
	/**
	* The default constructor for the class.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create the object from the passed DER encoded form.
	*
	* @param val the DER encoded form of the same.
	*/
	@:overload public function new(val : sun.security.util.DerValue) : Void;
	
	@:overload public function get(index : Int) : sun.security.x509.GeneralSubtree;
	
	@:overload public function remove(index : Int) : Void;
	
	@:overload public function add(tree : sun.security.x509.GeneralSubtree) : Void;
	
	@:overload public function contains(tree : sun.security.x509.GeneralSubtree) : Bool;
	
	@:overload public function size() : Int;
	
	@:overload public function iterator() : java.util.Iterator<sun.security.x509.GeneralSubtree>;
	
	@:overload public function trees() : java.util.List<sun.security.x509.GeneralSubtree>;
	
	@:overload public function clone() : Dynamic;
	
	/**
	* Return a printable string of the GeneralSubtree.
	*/
	@:overload public function toString() : String;
	
	/**
	* Encode the GeneralSubtrees.
	*
	* @params out the DerOutputStrean to encode this object to.
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Compare two general subtrees by comparing the subtrees
	* of each.
	*
	* @param other GeneralSubtrees to compare to this
	* @returns true if match
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/**
	* intersect this GeneralSubtrees with other.  This function
	* is used in merging permitted NameConstraints.  The operation
	* is performed as follows:
	* <ul>
	* <li>If a name in other narrows all names of the same type in this,
	*     the result will contain the narrower name and none of the
	*     names it narrows.
	* <li>If a name in other widens all names of the same type in this,
	*     the result will not contain the wider name.
	* <li>If a name in other does not share the same subtree with any name
	*     of the same type in this, then the name is added to the list
	*     of GeneralSubtrees returned.  These names should be added to
	*     the list of names that are specifically excluded.  The reason
	*     is that, if the intersection is empty, then no names of that
	*     type are permitted, and the only way to express this in
	*     NameConstraints is to include the name in excludedNames.
	* <li>If a name in this has no name of the same type in other, then
	*     the result contains the name in this.  No name of a given type
	*     means the name type is completely permitted.
	* <li>If a name in other has no name of the same type in this, then
	*     the result contains the name in other.  This means that
	*     the name is now constrained in some way, whereas before it was
	*     completely permitted.
	* <ul>
	*
	* @param other GeneralSubtrees to be intersected with this
	* @returns GeneralSubtrees to be merged with excluded; these are
	*          empty-valued name types corresponding to entries that were
	*          of the same type but did not share the same subtree between
	*          this and other. Returns null if no such.
	*/
	@:overload public function intersect(other : GeneralSubtrees) : GeneralSubtrees;
	
	/**
	* construct union of this GeneralSubtrees with other.
	*
	* @param other GeneralSubtrees to be united with this
	*/
	@:overload public function union(other : GeneralSubtrees) : Void;
	
	/**
	* reduce this GeneralSubtrees by contents of another.  This function
	* is used in merging excluded NameConstraints with permitted NameConstraints
	* to obtain a minimal form of permitted NameConstraints.  It is an
	* optimization, and does not affect correctness of the results.
	*
	* @param excluded GeneralSubtrees
	*/
	@:overload public function reduce(excluded : GeneralSubtrees) : Void;
	
	
}
