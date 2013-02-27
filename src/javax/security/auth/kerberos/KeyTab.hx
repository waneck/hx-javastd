package javax.security.auth.kerberos;
/*
* Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyTab
{
	/**
	* Returns a {@code KeyTab} instance from a {@code File} object.
	* <p>
	* The result of this method is never null. This method only associates
	* the returned {@code KeyTab} object with the file and does not read it.
	* @param file the keytab {@code File} object, must not be null
	* @return the keytab instance
	* @throws NullPointerException if the {@code file} argument is null
	*/
	@:overload public static function getInstance(file : java.io.File) : KeyTab;
	
	/**
	* Returns the default {@code KeyTab} instance.
	* <p>
	* The result of this method is never null. This method only associates
	* the returned {@code KeyTab} object with the default keytab file and
	* does not read it.
	* @return the default keytab instance.
	*/
	@:overload public static function getInstance() : KeyTab;
	
	/**
	* Returns fresh keys for the given Kerberos principal.
	* <p>
	* Implementation of this method should make sure the returned keys match
	* the latest content of the keytab file. The result is a newly created
	* copy that can be modified by the caller without modifying the keytab
	* object. The caller should {@link KerberosKey#destroy() destroy} the
	* result keys after they are used.
	* <p>
	* Please note that the keytab file can be created after the
	* {@code KeyTab} object is instantiated and its content may change over
	* time. Therefore, an application should call this method only when it
	* needs to use the keys. Any previous result from an earlier invocation
	* could potentially be expired.
	* <p>
	* If there is any error (say, I/O error or format error)
	* during the reading process of the KeyTab file, a saved result should be
	* returned. If there is no saved result (say, this is the first time this
	* method is called, or, all previous read attempts failed), an empty array
	* should be returned. This can make sure the result is not drastically
	* changed during the (probably slow) update of the keytab file.
	* <p>
	* Each time this method is called and the reading of the file succeeds
	* with no exception (say, I/O error or file format error),
	* the result should be saved for {@code principal}. The implementation can
	* also save keys for other principals having keys in the same keytab object
	* if convenient.
	* <p>
	* Any unsupported key read from the keytab is ignored and not included
	* in the result.
	*
	* @param principal the Kerberos principal, must not be null.
	* @return the keys (never null, may be empty)
	* @throws NullPointerException if the {@code principal}
	* argument is null
	* @throws SecurityException if a security manager exists and the read
	* access to the keytab file is not permitted
	*/
	@:overload public function getKeys(principal : javax.security.auth.kerberos.KerberosPrincipal) : java.NativeArray<javax.security.auth.kerberos.KerberosKey>;
	
	/**
	* Checks if the keytab file exists. Implementation of this method
	* should make sure that the result matches the latest status of the
	* keytab file.
	* <p>
	* The caller can use the result to determine if it should fallback to
	* another mechanism to read the keys.
	* @return true if the keytab file exists; false otherwise.
	* @throws SecurityException if a security manager exists and the read
	* access to the keytab file is not permitted
	*/
	@:overload public function exists() : Bool;
	
	@:overload public function toString() : String;
	
	/**
	* Returns a hashcode for this KeyTab.
	*
	* @return a hashCode() for the <code>KeyTab</code>
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares the specified Object with this KeyTab for equality.
	* Returns true if the given object is also a
	* <code>KeyTab</code> and the two
	* <code>KeyTab</code> instances are equivalent.
	*
	* @param other the Object to compare to
	* @return true if the specified object is equal to this KeyTab
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	
}
