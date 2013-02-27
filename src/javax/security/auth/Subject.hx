package javax.security.auth;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Subject implements java.io.Serializable
{
	/**
	* Create an instance of a <code>Subject</code>
	* with an empty <code>Set</code> of Principals and empty
	* Sets of public and private credentials.
	*
	* <p> The newly constructed Sets check whether this <code>Subject</code>
	* has been set read-only before permitting subsequent modifications.
	* The newly created Sets also prevent illegal modifications
	* by ensuring that callers have sufficient permissions.
	*
	* <p> To modify the Principals Set, the caller must have
	* <code>AuthPermission("modifyPrincipals")</code>.
	* To modify the public credential Set, the caller must have
	* <code>AuthPermission("modifyPublicCredentials")</code>.
	* To modify the private credential Set, the caller must have
	* <code>AuthPermission("modifyPrivateCredentials")</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create an instance of a <code>Subject</code> with
	* Principals and credentials.
	*
	* <p> The Principals and credentials from the specified Sets
	* are copied into newly constructed Sets.
	* These newly created Sets check whether this <code>Subject</code>
	* has been set read-only before permitting subsequent modifications.
	* The newly created Sets also prevent illegal modifications
	* by ensuring that callers have sufficient permissions.
	*
	* <p> To modify the Principals Set, the caller must have
	* <code>AuthPermission("modifyPrincipals")</code>.
	* To modify the public credential Set, the caller must have
	* <code>AuthPermission("modifyPublicCredentials")</code>.
	* To modify the private credential Set, the caller must have
	* <code>AuthPermission("modifyPrivateCredentials")</code>.
	* <p>
	*
	* @param readOnly true if the <code>Subject</code> is to be read-only,
	*          and false otherwise. <p>
	*
	* @param principals the <code>Set</code> of Principals
	*          to be associated with this <code>Subject</code>. <p>
	*
	* @param pubCredentials the <code>Set</code> of public credentials
	*          to be associated with this <code>Subject</code>. <p>
	*
	* @param privCredentials the <code>Set</code> of private credentials
	*          to be associated with this <code>Subject</code>.
	*
	* @exception NullPointerException if the specified
	*          <code>principals</code>, <code>pubCredentials</code>,
	*          or <code>privCredentials</code> are <code>null</code>.
	*/
	@:overload public function new(readOnly : Bool, principals : java.util.Set<java.security.Principal>, pubCredentials : java.util.Set<Dynamic>, privCredentials : java.util.Set<Dynamic>) : Void;
	
	/**
	* Set this <code>Subject</code> to be read-only.
	*
	* <p> Modifications (additions and removals) to this Subject's
	* <code>Principal</code> <code>Set</code> and
	* credential Sets will be disallowed.
	* The <code>destroy</code> operation on this Subject's credentials will
	* still be permitted.
	*
	* <p> Subsequent attempts to modify the Subject's <code>Principal</code>
	* and credential Sets will result in an
	* <code>IllegalStateException</code> being thrown.
	* Also, once a <code>Subject</code> is read-only,
	* it can not be reset to being writable again.
	*
	* <p>
	*
	* @exception SecurityException if the caller does not have permission
	*          to set this <code>Subject</code> to be read-only.
	*/
	@:overload public function setReadOnly() : Void;
	
	/**
	* Query whether this <code>Subject</code> is read-only.
	*
	* <p>
	*
	* @return true if this <code>Subject</code> is read-only, false otherwise.
	*/
	@:overload public function isReadOnly() : Bool;
	
	/**
	* Get the <code>Subject</code> associated with the provided
	* <code>AccessControlContext</code>.
	*
	* <p> The <code>AccessControlContext</code> may contain many
	* Subjects (from nested <code>doAs</code> calls).
	* In this situation, the most recent <code>Subject</code> associated
	* with the <code>AccessControlContext</code> is returned.
	*
	* <p>
	*
	* @param  acc the <code>AccessControlContext</code> from which to retrieve
	*          the <code>Subject</code>.
	*
	* @return  the <code>Subject</code> associated with the provided
	*          <code>AccessControlContext</code>, or <code>null</code>
	*          if no <code>Subject</code> is associated
	*          with the provided <code>AccessControlContext</code>.
	*
	* @exception SecurityException if the caller does not have permission
	*          to get the <code>Subject</code>. <p>
	*
	* @exception NullPointerException if the provided
	*          <code>AccessControlContext</code> is <code>null</code>.
	*/
	@:overload public static function getSubject(acc : java.security.AccessControlContext) : Subject;
	
	/**
	* Perform work as a particular <code>Subject</code>.
	*
	* <p> This method first retrieves the current Thread's
	* <code>AccessControlContext</code> via
	* <code>AccessController.getContext</code>,
	* and then instantiates a new <code>AccessControlContext</code>
	* using the retrieved context along with a new
	* <code>SubjectDomainCombiner</code> (constructed using
	* the provided <code>Subject</code>).
	* Finally, this method invokes <code>AccessController.doPrivileged</code>,
	* passing it the provided <code>PrivilegedAction</code>,
	* as well as the newly constructed <code>AccessControlContext</code>.
	*
	* <p>
	*
	* @param subject the <code>Subject</code> that the specified
	*                  <code>action</code> will run as.  This parameter
	*                  may be <code>null</code>. <p>
	*
	* @param action the code to be run as the specified
	*                  <code>Subject</code>. <p>
	*
	* @return the value returned by the PrivilegedAction's
	*                  <code>run</code> method.
	*
	* @exception NullPointerException if the <code>PrivilegedAction</code>
	*                  is <code>null</code>. <p>
	*
	* @exception SecurityException if the caller does not have permission
	*                  to invoke this method.
	*/
	@:overload public static function doAs<T>(subject : Subject, action : java.security.PrivilegedAction<T>) : T;
	
	/**
	* Perform work as a particular <code>Subject</code>.
	*
	* <p> This method first retrieves the current Thread's
	* <code>AccessControlContext</code> via
	* <code>AccessController.getContext</code>,
	* and then instantiates a new <code>AccessControlContext</code>
	* using the retrieved context along with a new
	* <code>SubjectDomainCombiner</code> (constructed using
	* the provided <code>Subject</code>).
	* Finally, this method invokes <code>AccessController.doPrivileged</code>,
	* passing it the provided <code>PrivilegedExceptionAction</code>,
	* as well as the newly constructed <code>AccessControlContext</code>.
	*
	* <p>
	*
	* @param subject the <code>Subject</code> that the specified
	*                  <code>action</code> will run as.  This parameter
	*                  may be <code>null</code>. <p>
	*
	* @param action the code to be run as the specified
	*                  <code>Subject</code>. <p>
	*
	* @return the value returned by the
	*                  PrivilegedExceptionAction's <code>run</code> method.
	*
	* @exception PrivilegedActionException if the
	*                  <code>PrivilegedExceptionAction.run</code>
	*                  method throws a checked exception. <p>
	*
	* @exception NullPointerException if the specified
	*                  <code>PrivilegedExceptionAction</code> is
	*                  <code>null</code>. <p>
	*
	* @exception SecurityException if the caller does not have permission
	*                  to invoke this method.
	*/
	@:overload public static function doAs<T>(subject : Subject, action : java.security.PrivilegedExceptionAction<T>) : T;
	
	/**
	* Perform privileged work as a particular <code>Subject</code>.
	*
	* <p> This method behaves exactly as <code>Subject.doAs</code>,
	* except that instead of retrieving the current Thread's
	* <code>AccessControlContext</code>, it uses the provided
	* <code>AccessControlContext</code>.  If the provided
	* <code>AccessControlContext</code> is <code>null</code>,
	* this method instantiates a new <code>AccessControlContext</code>
	* with an empty collection of ProtectionDomains.
	*
	* <p>
	*
	* @param subject the <code>Subject</code> that the specified
	*                  <code>action</code> will run as.  This parameter
	*                  may be <code>null</code>. <p>
	*
	* @param action the code to be run as the specified
	*                  <code>Subject</code>. <p>
	*
	* @param acc the <code>AccessControlContext</code> to be tied to the
	*                  specified <i>subject</i> and <i>action</i>. <p>
	*
	* @return the value returned by the PrivilegedAction's
	*                  <code>run</code> method.
	*
	* @exception NullPointerException if the <code>PrivilegedAction</code>
	*                  is <code>null</code>. <p>
	*
	* @exception SecurityException if the caller does not have permission
	*                  to invoke this method.
	*/
	@:overload public static function doAsPrivileged<T>(subject : Subject, action : java.security.PrivilegedAction<T>, acc : java.security.AccessControlContext) : T;
	
	/**
	* Perform privileged work as a particular <code>Subject</code>.
	*
	* <p> This method behaves exactly as <code>Subject.doAs</code>,
	* except that instead of retrieving the current Thread's
	* <code>AccessControlContext</code>, it uses the provided
	* <code>AccessControlContext</code>.  If the provided
	* <code>AccessControlContext</code> is <code>null</code>,
	* this method instantiates a new <code>AccessControlContext</code>
	* with an empty collection of ProtectionDomains.
	*
	* <p>
	*
	* @param subject the <code>Subject</code> that the specified
	*                  <code>action</code> will run as.  This parameter
	*                  may be <code>null</code>. <p>
	*
	* @param action the code to be run as the specified
	*                  <code>Subject</code>. <p>
	*
	* @param acc the <code>AccessControlContext</code> to be tied to the
	*                  specified <i>subject</i> and <i>action</i>. <p>
	*
	* @return the value returned by the
	*                  PrivilegedExceptionAction's <code>run</code> method.
	*
	* @exception PrivilegedActionException if the
	*                  <code>PrivilegedExceptionAction.run</code>
	*                  method throws a checked exception. <p>
	*
	* @exception NullPointerException if the specified
	*                  <code>PrivilegedExceptionAction</code> is
	*                  <code>null</code>. <p>
	*
	* @exception SecurityException if the caller does not have permission
	*                  to invoke this method.
	*/
	@:overload public static function doAsPrivileged<T>(subject : Subject, action : java.security.PrivilegedExceptionAction<T>, acc : java.security.AccessControlContext) : T;
	
	/**
	* Return the <code>Set</code> of Principals associated with this
	* <code>Subject</code>.  Each <code>Principal</code> represents
	* an identity for this <code>Subject</code>.
	*
	* <p> The returned <code>Set</code> is backed by this Subject's
	* internal <code>Principal</code> <code>Set</code>.  Any modification
	* to the returned <code>Set</code> affects the internal
	* <code>Principal</code> <code>Set</code> as well.
	*
	* <p>
	*
	* @return  The <code>Set</code> of Principals associated with this
	*          <code>Subject</code>.
	*/
	@:overload public function getPrincipals() : java.util.Set<java.security.Principal>;
	
	/**
	* Return a <code>Set</code> of Principals associated with this
	* <code>Subject</code> that are instances or subclasses of the specified
	* <code>Class</code>.
	*
	* <p> The returned <code>Set</code> is not backed by this Subject's
	* internal <code>Principal</code> <code>Set</code>.  A new
	* <code>Set</code> is created and returned for each method invocation.
	* Modifications to the returned <code>Set</code>
	* will not affect the internal <code>Principal</code> <code>Set</code>.
	*
	* <p>
	*
	* @param c the returned <code>Set</code> of Principals will all be
	*          instances of this class.
	*
	* @return a <code>Set</code> of Principals that are instances of the
	*          specified <code>Class</code>.
	*
	* @exception NullPointerException if the specified <code>Class</code>
	*                  is <code>null</code>.
	*/
	@:overload public function getPrincipals<T : java.security.Principal>(c : Class<T>) : java.util.Set<T>;
	
	/**
	* Return the <code>Set</code> of public credentials held by this
	* <code>Subject</code>.
	*
	* <p> The returned <code>Set</code> is backed by this Subject's
	* internal public Credential <code>Set</code>.  Any modification
	* to the returned <code>Set</code> affects the internal public
	* Credential <code>Set</code> as well.
	*
	* <p>
	*
	* @return  A <code>Set</code> of public credentials held by this
	*          <code>Subject</code>.
	*/
	@:overload public function getPublicCredentials() : java.util.Set<Dynamic>;
	
	/**
	* Return the <code>Set</code> of private credentials held by this
	* <code>Subject</code>.
	*
	* <p> The returned <code>Set</code> is backed by this Subject's
	* internal private Credential <code>Set</code>.  Any modification
	* to the returned <code>Set</code> affects the internal private
	* Credential <code>Set</code> as well.
	*
	* <p> A caller requires permissions to access the Credentials
	* in the returned <code>Set</code>, or to modify the
	* <code>Set</code> itself.  A <code>SecurityException</code>
	* is thrown if the caller does not have the proper permissions.
	*
	* <p> While iterating through the <code>Set</code>,
	* a <code>SecurityException</code> is thrown
	* if the caller does not have permission to access a
	* particular Credential.  The <code>Iterator</code>
	* is nevertheless advanced to next element in the <code>Set</code>.
	*
	* <p>
	*
	* @return  A <code>Set</code> of private credentials held by this
	*          <code>Subject</code>.
	*/
	@:overload public function getPrivateCredentials() : java.util.Set<Dynamic>;
	
	/**
	* Return a <code>Set</code> of public credentials associated with this
	* <code>Subject</code> that are instances or subclasses of the specified
	* <code>Class</code>.
	*
	* <p> The returned <code>Set</code> is not backed by this Subject's
	* internal public Credential <code>Set</code>.  A new
	* <code>Set</code> is created and returned for each method invocation.
	* Modifications to the returned <code>Set</code>
	* will not affect the internal public Credential <code>Set</code>.
	*
	* <p>
	*
	* @param c the returned <code>Set</code> of public credentials will all be
	*          instances of this class.
	*
	* @return a <code>Set</code> of public credentials that are instances
	*          of the  specified <code>Class</code>.
	*
	* @exception NullPointerException if the specified <code>Class</code>
	*          is <code>null</code>.
	*/
	@:overload public function getPublicCredentials<T>(c : Class<T>) : java.util.Set<T>;
	
	/**
	* Return a <code>Set</code> of private credentials associated with this
	* <code>Subject</code> that are instances or subclasses of the specified
	* <code>Class</code>.
	*
	* <p> The caller must have permission to access all of the
	* requested Credentials, or a <code>SecurityException</code>
	* will be thrown.
	*
	* <p> The returned <code>Set</code> is not backed by this Subject's
	* internal private Credential <code>Set</code>.  A new
	* <code>Set</code> is created and returned for each method invocation.
	* Modifications to the returned <code>Set</code>
	* will not affect the internal private Credential <code>Set</code>.
	*
	* <p>
	*
	* @param c the returned <code>Set</code> of private credentials will all be
	*          instances of this class.
	*
	* @return a <code>Set</code> of private credentials that are instances
	*          of the  specified <code>Class</code>.
	*
	* @exception NullPointerException if the specified <code>Class</code>
	*          is <code>null</code>.
	*/
	@:overload public function getPrivateCredentials<T>(c : Class<T>) : java.util.Set<T>;
	
	/**
	* Compares the specified Object with this <code>Subject</code>
	* for equality.  Returns true if the given object is also a Subject
	* and the two <code>Subject</code> instances are equivalent.
	* More formally, two <code>Subject</code> instances are
	* equal if their <code>Principal</code> and <code>Credential</code>
	* Sets are equal.
	*
	* <p>
	*
	* @param o Object to be compared for equality with this
	*          <code>Subject</code>.
	*
	* @return true if the specified Object is equal to this
	*          <code>Subject</code>.
	*
	* @exception SecurityException if the caller does not have permission
	*          to access the private credentials for this <code>Subject</code>,
	*          or if the caller does not have permission to access the
	*          private credentials for the provided <code>Subject</code>.
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Return the String representation of this <code>Subject</code>.
	*
	* <p>
	*
	* @return the String representation of this <code>Subject</code>.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a hashcode for this <code>Subject</code>.
	*
	* <p>
	*
	* @return a hashcode for this <code>Subject</code>.
	*
	* @exception SecurityException if the caller does not have permission
	*          to access this Subject's private credentials.
	*/
	@:overload public function hashCode() : Int;
	
	
}
/**
* Prevent modifications unless caller has permission.
*
* @serial include
*/
@:native('javax$security$auth$Subject$SecureSet') @:internal extern class Subject_SecureSet<E> extends java.util.AbstractSet<E> implements java.io.Serializable
{
	@:overload override public function size() : Int;
	
	@:overload override public function iterator() : java.util.Iterator<E>;
	
	@:overload override public function add(o : E) : Bool;
	
	@:overload override public function remove(o : Dynamic) : Bool;
	
	@:overload override public function contains(o : Dynamic) : Bool;
	
	@:overload override public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload override public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload override public function clear() : Void;
	
	
}
/**
* This class implements a <code>Set</code> which returns only
* members that are an instance of a specified Class.
*/
@:native('javax$security$auth$Subject$ClassSet') @:internal extern class Subject_ClassSet<T> extends java.util.AbstractSet<T>
{
	@:overload override public function size() : Int;
	
	@:overload override public function iterator() : java.util.Iterator<T>;
	
	@:overload override public function add(o : T) : Bool;
	
	
}
@:native('javax$security$auth$Subject$AuthPermissionHolder') @:internal extern class Subject_AuthPermissionHolder
{
	
}
