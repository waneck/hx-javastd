package javax.naming.ldap;
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
extern class LdapName implements javax.naming.Name
{
	/**
	* Constructs an LDAP name from the given distinguished name.
	*
	* @param name  This is a non-null distinguished name formatted
	* according to the rules defined in
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>.
	*
	* @throws InvalidNameException if a syntax violation is detected.
	* @see Rdn#escapeValue(Object value)
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Constructs an LDAP name given its parsed RDN components.
	* <p>
	* The indexing of RDNs in the list follows the numbering of
	* RDNs described in the class description.
	*
	* @param rdns The non-null list of <tt>Rdn</tt>s forming this LDAP name.
	*/
	@:overload public function new(rdns : java.util.List<javax.naming.ldap.Rdn>) : Void;
	
	/**
	* Retrieves the number of components in this LDAP name.
	* @return The non-negative number of components in this LDAP name.
	*/
	@:overload public function size() : Int;
	
	/**
	* Determines whether this LDAP name is empty.
	* An empty name is one with zero components.
	* @return true if this LDAP name is empty, false otherwise.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Retrieves the components of this name as an enumeration
	* of strings. The effect of updates to this name on this enumeration
	* is undefined. If the name has zero components, an empty (non-null)
	* enumeration is returned.
	* The order of the components returned by the enumeration is same as
	* the order in which the components are numbered as described in the
	* class description.
	*
	* @return A non-null enumeration of the components of this LDAP name.
	* Each element of the enumeration is of class String.
	*/
	@:overload public function getAll() : java.util.Enumeration<String>;
	
	/**
	* Retrieves a component of this LDAP name as a string.
	* @param  posn The 0-based index of the component to retrieve.
	*              Must be in the range [0,size()).
	* @return The non-null component at index posn.
	* @exception IndexOutOfBoundsException if posn is outside the
	*          specified range.
	*/
	@:overload public function get(posn : Int) : String;
	
	/**
	* Retrieves an RDN of this LDAP name as an Rdn.
	* @param   posn The 0-based index of the RDN to retrieve.
	*          Must be in the range [0,size()).
	* @return The non-null RDN at index posn.
	* @exception IndexOutOfBoundsException if posn is outside the
	*            specified range.
	*/
	@:overload public function getRdn(posn : Int) : javax.naming.ldap.Rdn;
	
	/**
	* Creates a name whose components consist of a prefix of the
	* components of this LDAP name.
	* Subsequent changes to this name will not affect the name
	* that is returned and vice versa.
	* @param  posn     The 0-based index of the component at which to stop.
	*                  Must be in the range [0,size()].
	* @return  An instance of <tt>LdapName</tt> consisting of the
	*          components at indexes in the range [0,posn).
	*          If posn is zero, an empty LDAP name is returned.
	* @exception   IndexOutOfBoundsException
	*              If posn is outside the specified range.
	*/
	@:overload public function getPrefix(posn : Int) : javax.naming.Name;
	
	/**
	* Creates a name whose components consist of a suffix of the
	* components in this LDAP name.
	* Subsequent changes to this name do not affect the name that is
	* returned and vice versa.
	*
	* @param  posn     The 0-based index of the component at which to start.
	*                  Must be in the range [0,size()].
	* @return  An instance of <tt>LdapName</tt> consisting of the
	*          components at indexes in the range [posn,size()).
	*          If posn is equal to size(), an empty LDAP name is
	*          returned.
	* @exception IndexOutOfBoundsException
	*          If posn is outside the specified range.
	*/
	@:overload public function getSuffix(posn : Int) : javax.naming.Name;
	
	/**
	* Determines whether this LDAP name starts with a specified LDAP name
	* prefix.
	* A name <tt>n</tt> is a prefix if it is equal to
	* <tt>getPrefix(n.size())</tt>--in other words this LDAP
	* name starts with 'n'. If n is null or not a RFC2253 formatted name
	* as described in the class description, false is returned.
	*
	* @param n The LDAP name to check.
	* @return  true if <tt>n</tt> is a prefix of this LDAP name,
	* false otherwise.
	* @see #getPrefix(int posn)
	*/
	@:overload public function startsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Determines whether the specified RDN sequence forms a prefix of this
	* LDAP name.  Returns true if this LdapName is at least as long as rdns,
	* and for every position p in the range [0, rdns.size()) the component
	* getRdn(p) matches rdns.get(p). Returns false otherwise. If rdns is
	* null, false is returned.
	*
	* @param rdns The sequence of <tt>Rdn</tt>s to check.
	* @return  true if <tt>rdns</tt> form a prefix of this LDAP name,
	*          false otherwise.
	*/
	@:overload public function startsWith(rdns : java.util.List<javax.naming.ldap.Rdn>) : Bool;
	
	/**
	* Determines whether this LDAP name ends with a specified
	* LDAP name suffix.
	* A name <tt>n</tt> is a suffix if it is equal to
	* <tt>getSuffix(size()-n.size())</tt>--in other words this LDAP
	* name ends with 'n'. If n is null or not a RFC2253 formatted name
	* as described in the class description, false is returned.
	*
	* @param n The LDAP name to check.
	* @return true if <tt>n</tt> is a suffix of this name, false otherwise.
	* @see #getSuffix(int posn)
	*/
	@:overload public function endsWith(n : javax.naming.Name) : Bool;
	
	/**
	* Determines whether the specified RDN sequence forms a suffix of this
	* LDAP name.  Returns true if this LdapName is at least as long as rdns,
	* and for every position p in the range [size() - rdns.size(), size())
	* the component getRdn(p) matches rdns.get(p). Returns false otherwise.
	* If rdns is null, false is returned.
	*
	* @param rdns The sequence of <tt>Rdn</tt>s to check.
	* @return  true if <tt>rdns</tt> form a suffix of this LDAP name,
	*          false otherwise.
	*/
	@:overload public function endsWith(rdns : java.util.List<javax.naming.ldap.Rdn>) : Bool;
	
	/**
	* Adds the components of a name -- in order -- to the end of this name.
	*
	* @param   suffix The non-null components to add.
	* @return  The updated name (not a new instance).
	*
	* @throws  InvalidNameException if <tt>suffix</tt> is not a valid LDAP
	*          name, or if the addition of the components would violate the
	*          syntax rules of this LDAP name.
	*/
	@:overload public function addAll(suffix : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds the RDNs of a name -- in order -- to the end of this name.
	*
	* @param   suffixRdns The non-null suffix <tt>Rdn</tt>s to add.
	* @return  The updated name (not a new instance).
	*/
	@:overload public function addAll(suffixRdns : java.util.List<javax.naming.ldap.Rdn>) : javax.naming.Name;
	
	/**
	* Adds the components of a name -- in order -- at a specified position
	* within this name. Components of this LDAP name at or after the
	* index (if any) of the first new component are shifted up
	* (away from index 0) to accomodate the new components.
	*
	* @param suffix    The non-null components to add.
	* @param posn      The index at which to add the new component.
	*                  Must be in the range [0,size()].
	*
	* @return  The updated name (not a new instance).
	*
	* @throws  InvalidNameException if <tt>suffix</tt> is not a valid LDAP
	*          name, or if the addition of the components would violate the
	*          syntax rules of this LDAP name.
	* @throws  IndexOutOfBoundsException.
	*          If posn is outside the specified range.
	*/
	@:overload public function addAll(posn : Int, suffix : javax.naming.Name) : javax.naming.Name;
	
	/**
	* Adds the RDNs of a name -- in order -- at a specified position
	* within this name. RDNs of this LDAP name at or after the
	* index (if any) of the first new RDN are shifted up (away from index 0) to
	* accomodate the new RDNs.
	*
	* @param suffixRdns        The non-null suffix <tt>Rdn</tt>s to add.
	* @param posn              The index at which to add the suffix RDNs.
	*                          Must be in the range [0,size()].
	*
	* @return  The updated name (not a new instance).
	* @throws  IndexOutOfBoundsException.
	*          If posn is outside the specified range.
	*/
	@:overload public function addAll(posn : Int, suffixRdns : java.util.List<javax.naming.ldap.Rdn>) : javax.naming.Name;
	
	/**
	* Adds a single component to the end of this LDAP name.
	*
	* @param comp      The non-null component to add.
	* @return          The updated LdapName, not a new instance.
	*                  Cannot be null.
	* @exception       InvalidNameException If adding comp at end of the name
	*                  would violate the name's syntax.
	*/
	@:overload public function add(comp : String) : javax.naming.Name;
	
	/**
	* Adds a single RDN to the end of this LDAP name.
	*
	* @param comp      The non-null RDN to add.
	*
	* @return          The updated LdapName, not a new instance.
	*                  Cannot be null.
	*/
	@:overload public function add(comp : javax.naming.ldap.Rdn) : javax.naming.Name;
	
	/**
	* Adds a single component at a specified position within this
	* LDAP name.
	* Components of this LDAP name at or after the index (if any) of the new
	* component are shifted up by one (away from index 0) to accommodate
	* the new component.
	*
	* @param  comp     The non-null component to add.
	* @param  posn     The index at which to add the new component.
	*                  Must be in the range [0,size()].
	* @return          The updated LdapName, not a new instance.
	*                  Cannot be null.
	* @exception       IndexOutOfBoundsException.
	*                  If posn is outside the specified range.
	* @exception       InvalidNameException If adding comp at the
	*                  specified position would violate the name's syntax.
	*/
	@:overload public function add(posn : Int, comp : String) : javax.naming.Name;
	
	/**
	* Adds a single RDN at a specified position within this
	* LDAP name.
	* RDNs of this LDAP name at or after the index (if any) of the new
	* RDN are shifted up by one (away from index 0) to accommodate
	* the new RDN.
	*
	* @param  comp     The non-null RDN to add.
	* @param  posn     The index at which to add the new RDN.
	*                  Must be in the range [0,size()].
	* @return          The updated LdapName, not a new instance.
	*                  Cannot be null.
	* @exception       IndexOutOfBoundsException
	*                  If posn is outside the specified range.
	*/
	@:overload public function add(posn : Int, comp : javax.naming.ldap.Rdn) : javax.naming.Name;
	
	/**
	* Removes a component from this LDAP name.
	* The component of this name at the specified position is removed.
	* Components with indexes greater than this position (if any)
	* are shifted down (toward index 0) by one.
	*
	* @param posn      The index of the component to remove.
	*                  Must be in the range [0,size()).
	* @return          The component removed (a String).
	*
	* @throws          IndexOutOfBoundsException
	*                  if posn is outside the specified range.
	* @throws          InvalidNameException if deleting the component
	*                  would violate the syntax rules of the name.
	*/
	@:overload public function remove(posn : Int) : Dynamic;
	
	/**
	* Retrieves the list of relative distinguished names.
	* The contents of the list are unmodifiable.
	* The indexing of RDNs in the returned list follows the numbering of
	* RDNs as described in the class description.
	* If the name has zero components, an empty list is returned.
	*
	* @return  The name as a list of RDNs which are instances of
	*          the class {@link Rdn Rdn}.
	*/
	@:overload public function getRdns() : java.util.List<javax.naming.ldap.Rdn>;
	
	/**
	* Generates a new copy of this name.
	* Subsequent changes to the components of this name will not
	* affect the new copy, and vice versa.
	*
	* @return A copy of the this LDAP name.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns a string representation of this LDAP name in a format
	* defined by <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>
	* and described in the class description. If the name has zero
	* components an empty string is returned.
	*
	* @return The string representation of the LdapName.
	*/
	@:overload public function toString() : String;
	
	/**
	* Determines whether two LDAP names are equal.
	* If obj is null or not an LDAP name, false is returned.
	* <p>
	* Two LDAP names are equal if each RDN in one is equal
	* to the corresponding RDN in the other. This implies
	* both have the same number of RDNs, and each RDN's
	* equals() test against the corresponding RDN in the other
	* name returns true. See {@link Rdn#equals(Object obj)}
	* for a definition of RDN equality.
	*
	* @param  obj      The possibly null object to compare against.
	* @return          true if obj is equal to this LDAP name,
	*                  false otherwise.
	* @see #hashCode
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Compares this LdapName with the specified Object for order.
	* Returns a negative integer, zero, or a positive integer as this
	* Name is less than, equal to, or greater than the given Object.
	* <p>
	* If obj is null or not an instance of LdapName, ClassCastException
	* is thrown.
	* <p>
	* Ordering of LDAP names follows the lexicographical rules for
	* string comparison, with the extension that this applies to all
	* the RDNs in the LDAP name. All the RDNs are lined up in their
	* specified order and compared lexicographically.
	* See {@link Rdn#compareTo(Object obj) Rdn.compareTo(Object obj)}
	* for RDN comparison rules.
	* <p>
	* If this LDAP name is lexicographically lesser than obj,
	* a negative number is returned.
	* If this LDAP name is lexicographically greater than obj,
	* a positive number is returned.
	* @param obj The non-null LdapName instance to compare against.
	*
	* @return  A negative integer, zero, or a positive integer as this Name
	*          is less than, equal to, or greater than the given obj.
	* @exception ClassCastException if obj is null or not a LdapName.
	*/
	@:overload public function compareTo(obj : Dynamic) : Int;
	
	/**
	* Computes the hash code of this LDAP name.
	* The hash code is the sum of the hash codes of individual RDNs
	* of this  name.
	*
	* @return An int representing the hash code of this name.
	* @see #equals
	*/
	@:overload public function hashCode() : Int;
	
	
}
