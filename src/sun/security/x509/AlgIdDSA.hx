package sun.security.x509;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
* This class identifies DSS/DSA Algorithm variants, which are distinguished
* by using different algorithm parameters <em>P, Q, G</em>.  It uses the
* NIST/IETF standard DER encoding.  These are used to implement the Digital
* Signature Standard (DSS), FIPS 186.
*
* <P><em><b>NOTE:</b>  DSS/DSA Algorithm IDs may be created without these
* parameters.  Use of DSS/DSA in modes where parameters are
* either implicit (e.g. a default applicable to a site or a larger scope),
* or are derived from some Certificate Authority's DSS certificate, is
* not supported directly.  The application is responsible for creating a key
* containing the required parameters prior to using the key in cryptographic
* operations.  The follwoing is an example of how this may be done assuming
* that we have a certificate called <code>currentCert</code> which doesn't
* contain DSS/DSA parameters and we need to derive DSS/DSA parameters
* from a CA's certificate called <code>caCert</code>.
* <p>
* <code><pre>
* // key containing parameters to use
* DSAPublicKey cAKey = (DSAPublicKey)(caCert.getPublicKey());
* // key without parameters
* DSAPublicKey nullParamsKey = (DSAPublicKey)(currentCert.getPublicKey());
*
* DSAParams cAKeyParams = cAKey.getParams();
* KeyFactory kf = KeyFactory.getInstance("DSA");
* DSAPublicKeySpec ks = new DSAPublicKeySpec(nullParamsKey.getY(),
*                                            cAKeyParams.getP(),
*                                            cAKeyParams.getQ(),
*                                            cAKeyParams.getG());
* DSAPublicKey usableKey = kf.generatePublic(ks);
* </pre></code>
*
* @see java.security.interfaces.DSAParams
* @see java.security.interfaces.DSAPublicKey
* @see java.security.KeyFactory
* @see java.security.spec.DSAPublicKeySpec
*
* @author David Brownell
*/
extern class AlgIdDSA extends sun.security.x509.AlgorithmId implements java.security.interfaces.DSAParams
{
	/** Returns the DSS/DSA parameter "P" */
	@:overload @:public public function getP() : java.math.BigInteger;
	
	/** Returns the DSS/DSA parameter "Q" */
	@:overload @:public public function getQ() : java.math.BigInteger;
	
	/** Returns the DSS/DSA parameter "G" */
	@:overload @:public public function getG() : java.math.BigInteger;
	
	/**
	* Default constructor.  The OID and parameters must be
	* deserialized before this algorithm ID is used.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct an AlgIdDSA from an X.509 encoded byte array.
	*/
	@:overload @:public public function new(encodedAlg : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a DSS/DSA Algorithm ID from unsigned integers that
	* define the algorithm parameters.  Those integers are encoded
	* as big-endian byte arrays.
	*
	* @param p the DSS/DSA paramter "P"
	* @param q the DSS/DSA paramter "Q"
	* @param g the DSS/DSA paramter "G"
	*/
	@:overload @:public public function new(p : java.NativeArray<java.StdTypes.Int8>, q : java.NativeArray<java.StdTypes.Int8>, g : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a DSS/DSA Algorithm ID from numeric parameters.
	* If all three are null, then the parameters portion of the algorithm id
	* is set to null.  See note in header regarding use.
	*
	* @param p the DSS/DSA paramter "P"
	* @param q the DSS/DSA paramter "Q"
	* @param g the DSS/DSA paramter "G"
	*/
	@:overload @:public public function new(p : java.math.BigInteger, q : java.math.BigInteger, g : java.math.BigInteger) : Void;
	
	/**
	* Returns "DSA", indicating the Digital Signature Algorithm (DSA) as
	* defined by the Digital Signature Standard (DSS), FIPS 186.
	*/
	@:overload @:public override public function getName() : String;
	
	/**
	* Parses algorithm parameters P, Q, and G.  They're found
	* in the "params" member, which never needs to be changed.
	*/
	@:overload @:protected override private function decodeParams() : Void;
	
	/*
	* Returns a formatted string describing the parameters.
	*/
	@:overload @:public override public function toString() : String;
	
	/*
	* Returns a string describing the parameters.
	*/
	@:overload @:protected override private function paramsToString() : String;
	
	
}
