package javax.security.auth.kerberos;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class encapsulates a Kerberos principal.
*
* @author Mayank Upadhyay
* @since 1.4
*/
@:require(java4) extern class KerberosPrincipal implements java.security.Principal implements java.io.Serializable
{
	/**
	* unknown name type.
	*/
	@:public @:static @:final public static var KRB_NT_UNKNOWN(default, null) : Int;
	
	/**
	* user principal name type.
	*/
	@:public @:static @:final public static var KRB_NT_PRINCIPAL(default, null) : Int;
	
	/**
	* service and other unique instance (krbtgt) name type.
	*/
	@:public @:static @:final public static var KRB_NT_SRV_INST(default, null) : Int;
	
	/**
	* service with host name as instance (telnet, rcommands) name type.
	*/
	@:public @:static @:final public static var KRB_NT_SRV_HST(default, null) : Int;
	
	/**
	* service with host as remaining components name type.
	*/
	@:public @:static @:final public static var KRB_NT_SRV_XHST(default, null) : Int;
	
	/**
	* unique ID name type.
	*/
	@:public @:static @:final public static var KRB_NT_UID(default, null) : Int;
	
	/**
	* Constructs a KerberosPrincipal from the provided string input. The
	* name type for this  principal defaults to
	* {@link #KRB_NT_PRINCIPAL KRB_NT_PRINCIPAL}
	* This string is assumed to contain a name in the format
	* that is specified in Section 2.1.1. (Kerberos Principal Name Form) of
	* <a href=http://www.ietf.org/rfc/rfc1964.txt> RFC 1964 </a>
	* (for example, <i>duke@FOO.COM</i>, where <i>duke</i>
	* represents a principal, and <i>FOO.COM</i> represents a realm).
	*
	* <p>If the input name does not contain a realm, the default realm
	* is used. The default realm can be specified either in a Kerberos
	* configuration file or via the java.security.krb5.realm
	* system property. For more information,
	* <a href="../../../../../technotes/guides/security/jgss/tutorials/index.html">
	* Kerberos Requirements </a>
	*
	* @param name the principal name
	* @throws IllegalArgumentException if name is improperly
	* formatted, if name is null, or if name does not contain
	* the realm to use and the default realm is not specified
	* in either a Kerberos configuration file or via the
	* java.security.krb5.realm system property.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Constructs a KerberosPrincipal from the provided string and
	* name type input.  The string is assumed to contain a name in the
	* format that is specified in Section 2.1 (Mandatory Name Forms) of
	* <a href=http://www.ietf.org/rfc/rfc1964.txt>RFC 1964</a>.
	* Valid name types are specified in Section 6.2 (Principal Names) of
	* <a href=http://www.ietf.org/rfc/rfc4120.txt>RFC 4120</a>.
	* The input name must be consistent with the provided name type.
	* (for example, <i>duke@FOO.COM</i>, is a valid input string for the
	* name type, KRB_NT_PRINCIPAL where <i>duke</i>
	* represents a principal, and <i>FOO.COM</i> represents a realm).

	* <p> If the input name does not contain a realm, the default realm
	* is used. The default realm can be specified either in a Kerberos
	* configuration file or via the java.security.krb5.realm
	* system property. For more information, see
	* <a href="../../../../../technotes/guides/security/jgss/tutorials/index.html">
	* Kerberos Requirements</a>.
	*
	* @param name the principal name
	* @param nameType the name type of the principal
	* @throws IllegalArgumentException if name is improperly
	* formatted, if name is null, if the nameType is not supported,
	* or if name does not contain the realm to use and the default
	* realm is not specified in either a Kerberos configuration
	* file or via the java.security.krb5.realm system property.
	*/
	@:overload @:public public function new(name : String, nameType : Int) : Void;
	
	/**
	* Returns the realm component of this Kerberos principal.
	*
	* @return the realm component of this Kerberos principal.
	*/
	@:overload @:public public function getRealm() : String;
	
	/**
	* Returns a hashcode for this principal. The hash code is defined to
	* be the result of the following  calculation:
	* <pre><code>
	*  hashCode = getName().hashCode();
	* </code></pre>
	*
	* @return a hashCode() for the <code>KerberosPrincipal</code>
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares the specified Object with this Principal for equality.
	* Returns true if the given object is also a
	* <code>KerberosPrincipal</code> and the two
	* <code>KerberosPrincipal</code> instances are equivalent.
	* More formally two <code>KerberosPrincipal</code> instances are equal
	* if the values returned by <code>getName()</code> are equal and the
	* values returned by <code>getNameType()</code> are equal.
	*
	* @param other the Object to compare to
	* @return true if the Object passed in represents the same principal
	* as this one, false otherwise.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* The returned string corresponds to the single-string
	* representation of a Kerberos Principal name as specified in
	* Section 2.1 of <a href=http://www.ietf.org/rfc/rfc1964.txt>RFC 1964</a>.
	*
	* @return the principal name.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the name type of the KerberosPrincipal. Valid name types
	* are specified in Section 6.2 of
	* <a href=http://www.ietf.org/rfc/rfc4120.txt> RFC4120</a>.
	*
	* @return the name type.
	*
	*/
	@:overload @:public public function getNameType() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
