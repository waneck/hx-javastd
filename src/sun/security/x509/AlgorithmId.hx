package sun.security.x509;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This class identifies algorithms, such as cryptographic transforms, each
* of which may be associated with parameters.  Instances of this base class
* are used when this runtime environment has no special knowledge of the
* algorithm type, and may also be used in other cases.  Equivalence is
* defined according to OID and (where relevant) parameters.
*
* <P>Subclasses may be used, for example when when the algorithm ID has
* associated parameters which some code (e.g. code using public keys) needs
* to have parsed.  Two examples of such algorithms are Diffie-Hellman key
* exchange, and the Digital Signature Standard Algorithm (DSS/DSA).
*
* <P>The OID constants defined in this class correspond to some widely
* used algorithms, for which conventional string names have been defined.
* This class is not a general repository for OIDs, or for such string names.
* Note that the mappings between algorithm IDs and algorithm names is
* not one-to-one.
*
*
* @author David Brownell
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class AlgorithmId implements java.io.Serializable implements sun.security.util.DerEncoder
{
	/**
	* Parameters for this algorithm.  These are stored in unparsed
	* DER-encoded form; subclasses can be made to automaticaly parse
	* them so there is fast access to these parameters.
	*/
	private var params : sun.security.util.DerValue;
	
	/**
	* Constructs an algorithm ID which will be initialized
	* separately, for example by deserialization.
	* @deprecated use one of the other constructors.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a parameterless algorithm ID.
	*
	* @param oid the identifier for the algorithm
	*/
	@:overload public function new(oid : sun.security.util.ObjectIdentifier) : Void;
	
	/**
	* Constructs an algorithm ID with algorithm parameters.
	*
	* @param oid the identifier for the algorithm.
	* @param algparams the associated algorithm parameters.
	*/
	@:overload public function new(oid : sun.security.util.ObjectIdentifier, algparams : java.security.AlgorithmParameters) : Void;
	
	@:overload private function decodeParams() : Void;
	
	/**
	* Marshal a DER-encoded "AlgorithmID" sequence on the DER stream.
	*/
	@:overload @:final public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* DER encode this object onto an output stream.
	* Implements the <code>DerEncoder</code> interface.
	*
	* @param out
	* the output stream on which to write the DER encoding.
	*
	* @exception IOException on encoding error.
	*/
	@:overload public function derEncode(out : java.io.OutputStream) : Void;
	
	/**
	* Returns the DER-encoded X.509 AlgorithmId as a byte array.
	*/
	@:overload @:final public function encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the ISO OID for this algorithm.  This is usually converted
	* to a string and used as part of an algorithm name, for example
	* "OID.1.3.14.3.2.13" style notation.  Use the <code>getName</code>
	* call when you do not need to ensure cross-system portability
	* of algorithm names, or need a user friendly name.
	*/
	@:overload @:final public function getOID() : sun.security.util.ObjectIdentifier;
	
	/**
	* Returns a name for the algorithm which may be more intelligible
	* to humans than the algorithm's OID, but which won't necessarily
	* be comprehensible on other systems.  For example, this might
	* return a name such as "MD5withRSA" for a signature algorithm on
	* some systems.  It also returns names like "OID.1.2.3.4", when
	* no particular name for the algorithm is known.
	*/
	@:overload public function getName() : String;
	
	@:overload public function getParameters() : java.security.AlgorithmParameters;
	
	/**
	* Returns the DER encoded parameter, which can then be
	* used to initialize java.security.AlgorithmParamters.
	*
	* @return DER encoded parameters, or null not present.
	*/
	@:overload public function getEncodedParams() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns true iff the argument indicates the same algorithm
	* with the same parameters.
	*/
	@:overload public function equals(other : AlgorithmId) : Bool;
	
	/**
	* Compares this AlgorithmID to another.  If algorithm parameters are
	* available, they are compared.  Otherwise, just the object IDs
	* for the algorithm are compared.
	*
	* @param other preferably an AlgorithmId, else an ObjectIdentifier
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Compares two algorithm IDs for equality.  Returns true iff
	* they are the same algorithm, ignoring algorithm parameters.
	*/
	@:overload @:final public function equals(id : sun.security.util.ObjectIdentifier) : Bool;
	
	/**
	* Returns a hashcode for this AlgorithmId.
	*
	* @return a hashcode for this AlgorithmId.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Provides a human-readable description of the algorithm parameters.
	* This may be redefined by subclasses which parse those parameters.
	*/
	@:overload private function paramsToString() : String;
	
	/**
	* Returns a string describing the algorithm and its parameters.
	*/
	@:overload public function toString() : String;
	
	/**
	* Parse (unmarshal) an ID from a DER sequence input value.  This form
	* parsing might be used when expanding a value which has already been
	* partially unmarshaled as a set or sequence member.
	*
	* @exception IOException on error.
	* @param val the input value, which contains the algid and, if
	*          there are any parameters, those parameters.
	* @return an ID for the algorithm.  If the system is configured
	*          appropriately, this may be an instance of a class
	*          with some kind of special support for this algorithm.
	*          In that case, you may "narrow" the type of the ID.
	*/
	@:overload public static function parse(val : sun.security.util.DerValue) : AlgorithmId;
	
	/**
	* Returns one of the algorithm IDs most commonly associated
	* with this algorithm name.
	*
	* @param algname the name being used
	* @deprecated use the short get form of this method.
	* @exception NoSuchAlgorithmException on error.
	*/
	@:overload public static function getAlgorithmId(algname : String) : AlgorithmId;
	
	/**
	* Returns one of the algorithm IDs most commonly associated
	* with this algorithm name.
	*
	* @param algname the name being used
	* @exception NoSuchAlgorithmException on error.
	*/
	@:overload public static function get(algname : String) : AlgorithmId;
	
	/**
	* Returns one of the algorithm IDs most commonly associated
	* with this algorithm parameters.
	*
	* @param algparams the associated algorithm parameters.
	* @exception NoSuchAlgorithmException on error.
	*/
	@:overload public static function get(algparams : java.security.AlgorithmParameters) : AlgorithmId;
	
	/**
	* Algorithm ID for the MD2 Message Digest Algorthm, from RFC 1319.
	* OID = 1.2.840.113549.2.2
	*/
	public static var MD2_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Algorithm ID for the MD5 Message Digest Algorthm, from RFC 1321.
	* OID = 1.2.840.113549.2.5
	*/
	public static var MD5_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Algorithm ID for the SHA1 Message Digest Algorithm, from FIPS 180-1.
	* This is sometimes called "SHA", though that is often confusing since
	* many people refer to FIPS 180 (which has an error) as defining SHA.
	* OID = 1.3.14.3.2.26. Old SHA-0 OID: 1.3.14.3.2.18.
	*/
	public static var SHA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var SHA256_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var SHA384_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var SHA512_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var DH_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var DH_PKIX_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var DSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var DSA_OIW_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var EC_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var RSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var RSAEncryption_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var md2WithRSAEncryption_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var md5WithRSAEncryption_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha1WithRSAEncryption_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha1WithRSAEncryption_OIW_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha256WithRSAEncryption_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha384WithRSAEncryption_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha512WithRSAEncryption_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var shaWithDSA_OIW_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha1WithDSA_OIW_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha1WithDSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha1WithECDSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha224WithECDSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha256WithECDSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha384WithECDSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var sha512WithECDSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var specifiedWithECDSA_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	/**
	* Algorithm ID for the PBE encryption algorithms from PKCS#5 and
	* PKCS#12.
	*/
	public static var pbeWithMD5AndDES_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var pbeWithMD5AndRC2_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var pbeWithSHA1AndDES_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var pbeWithSHA1AndRC2_oid(default, null) : sun.security.util.ObjectIdentifier;
	
	public static var pbeWithSHA1AndDESede_oid : sun.security.util.ObjectIdentifier;
	
	public static var pbeWithSHA1AndRC2_40_oid : sun.security.util.ObjectIdentifier;
	
	/**
	* Creates a signature algorithm name from a digest algorithm
	* name and a encryption algorithm name.
	*/
	@:overload public static function makeSigAlg(digAlg : String, encAlg : String) : String;
	
	/**
	* Extracts the encryption algorithm name from a signature
	* algorithm name.
	*/
	@:overload public static function getEncAlgFromSigAlg(signatureAlgorithm : String) : String;
	
	/**
	* Extracts the digest algorithm name from a signature
	* algorithm name.
	*/
	@:overload public static function getDigAlgFromSigAlg(signatureAlgorithm : String) : String;
	
	
}
