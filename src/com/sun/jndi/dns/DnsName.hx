package com.sun.jndi.dns;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
* <tt>DnsName</tt> implements compound names for DNS as specified by
* RFCs 1034 and 1035, and as updated and clarified by RFCs 1123 and 2181.
*
* <p> The labels in a domain name correspond to JNDI atomic names.
* Each label must be less than 64 octets in length, and only the
* optional root label at the end of the name may be 0 octets long.
* The sum of the lengths of all labels in a name, plus the number of
* non-root labels plus 1, must be less than 256.  The textual
* representation of a domain name consists of the labels, escaped as
* needed, dot-separated, and ordered right-to-left.
*
* <p> A label consists of a sequence of octets, each of which may
* have any value from 0 to 255.
*
* <p> <em>Host names</em> are a subset of domain names.
* Their labels contain only ASCII letters, digits, and hyphens, and
* none may begin or end with a hyphen.  While names not conforming to
* these rules may be valid domain names, they will not be usable by a
* number of DNS applications, and should in most cases be avoided.
*
* <p> DNS does not specify an encoding (such as UTF-8) to use for
* octets with non-ASCII values.  As of this writing there is some
* work going on in this area, but it is not yet finalized.
* <tt>DnsName</tt> currently converts any non-ASCII octets into
* characters using ISO-LATIN-1 encoding, in effect taking the
* value of each octet and storing it directly into the low-order byte
* of a Java character and <i>vice versa</i>.  As a consequence, no
* character in a DNS name will ever have a non-zero high-order byte.
* When the work on internationalizing domain names has stabilized
* (see for example <i>draft-ietf-idn-idna-10.txt</i>), <tt>DnsName</tt>
* may be updated to conform to that work.
*
* <p> Backslash (<tt>\</tt>) is used as the escape character in the
* textual representation of a domain name.  The character sequence
* `<tt>\DDD</tt>', where <tt>DDD</tt> is a 3-digit decimal number
* (with leading zeros if needed), represents the octet whose value
* is <tt>DDD</tt>.  The character sequence `<tt>\C</tt>', where
* <tt>C</tt> is a character other than <tt>'0'</tt> through
* <tt>'9'</tt>, represents the octet whose value is that of
* <tt>C</tt> (again using ISO-LATIN-1 encoding); this is particularly
* useful for escaping <tt>'.'</tt> or backslash itself.  Backslash is
* otherwise not allowed in a domain name.  Note that escape characters
* are interpreted when a name is parsed.  So, for example, the character
* sequences `<tt>S</tt>', `<tt>\S</tt>', and `<tt>\083</tt>' each
* represent the same one-octet name.  The <tt>toString()</tt> method
* does not generally insert escape sequences except where necessary.
* If, however, the <tt>DnsName</tt> was constructed using unneeded
* escapes, those escapes may appear in the <tt>toString</tt> result.
*
* <p> Atomic names passed as parameters to methods of
* <tt>DnsName</tt>, and those returned by them, are unescaped.  So,
* for example, <tt>(new&nbsp;DnsName()).add("a.b")</tt> creates an
* object representing the one-label domain name <tt>a\.b</tt>, and
* calling <tt>get(0)</tt> on this object returns <tt>"a.b"</tt>.
*
* <p> While DNS names are case-preserving, comparisons between them
* are case-insensitive.  When comparing names containing non-ASCII
* octets, <tt>DnsName</tt> uses case-insensitive comparison
* between pairs of ASCII values, and exact binary comparison
* otherwise.

* <p> A <tt>DnsName</tt> instance is not synchronized against
* concurrent access by multiple threads.
*
* @author Scott Seligman
*/
extern class DnsName implements javax.naming.Name
{
	/**
	* Constructs a <tt>DnsName</tt> representing the empty domain name.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a <tt>DnsName</tt> representing a given domain name.
	*
	* @param   name    the domain name to parse
	* @throws InvalidNameException if <tt>name</tt> does not conform
	*          to DNS syntax.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Does this domain name follow <em>host name</em> syntax?
	*/
	@:overload @:public public function isHostName() : Bool;
	
	@:overload @:public public function getOctets() : java.StdTypes.Int16;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function isEmpty() : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function compareTo(obj : Dynamic) : Int;
	
	@:overload @:public public function startsWith(n : javax.naming.Name) : Bool;
	
	@:overload @:public public function endsWith(n : javax.naming.Name) : Bool;
	
	@:overload @:public public function get(pos : Int) : String;
	
	@:overload @:public public function getAll() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function getPrefix(pos : Int) : javax.naming.Name;
	
	@:overload @:public public function getSuffix(pos : Int) : javax.naming.Name;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function remove(pos : Int) : Dynamic;
	
	@:overload @:public public function add(comp : String) : javax.naming.Name;
	
	@:overload @:public public function add(pos : Int, comp : String) : javax.naming.Name;
	
	@:overload @:public public function addAll(suffix : javax.naming.Name) : javax.naming.Name;
	
	@:overload @:public public function addAll(pos : Int, n : javax.naming.Name) : javax.naming.Name;
	
	
}
