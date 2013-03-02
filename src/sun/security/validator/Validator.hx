package sun.security.validator;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Validator abstract base class. Concrete classes are instantiated by calling
* one of the getInstance() methods. All methods defined in this class
* must be safe for concurrent use by multiple threads.<p>
*
* The model is that a Validator instance is created specifying validation
* settings, such as trust anchors or PKIX parameters. Then one or more
* paths are validated using those parameters. In some cases, additional
* information can be provided per path validation. This is independent of
* the validation parameters and currently only used for TLS server validation.
* <p>
* Path validation is performed by calling one of the validate() methods. It
* specifies a suggested path to be used for validation if available, or only
* the end entity certificate otherwise. Optionally additional certificates can
* be specified that the caller believes could be helpful. Implementations are
* free to make use of this information or validate the path using other means.
* validate() also checks that the end entity certificate is suitable for the
* intended purpose as described below.
*
* <p>There are two orthogonal parameters to select the Validator
* implementation: type and variant. Type selects the validation algorithm.
* Currently supported are TYPE_SIMPLE and TYPE_PKIX. See SimpleValidator and
* PKIXValidator for details.
* <p>
* Variant controls additional extension checks. Currently supported are
* five variants:
* <ul>
* <li>VAR_GENERIC (no additional checks),
* <li>VAR_TLS_CLIENT (TLS client specific checks)
* <li>VAR_TLS_SERVER (TLS server specific checks), and
* <li>VAR_CODE_SIGNING (code signing specific checks).
* <li>VAR_JCE_SIGNING (JCE code signing specific checks).
* <li>VAR_TSA_SERVER (TSA server specific checks).
* <li>VAR_PLUGIN_CODE_SIGNING (Plugin/WebStart code signing specific checks).
* </ul>
* See EndEntityChecker for more information.
* <p>
* Examples:
* <pre>
*   // instantiate validator specifying type, variant, and trust anchors
*   Validator validator = Validator.getInstance(Validator.TYPE_PKIX,
*                                               Validator.VAR_TLS_CLIENT,
*                                               trustedCerts);
*   // validate one or more chains using the validator
*   validator.validate(chain); // throws CertificateException if failed
* </pre>
*
* @see SimpleValidator
* @see PKIXValidator
* @see EndEntityChecker
*
* @author Andreas Sterbenz
*/
extern class Validator
{
	/**
	* Constant for a validator of type Simple.
	* @see #getInstance
	*/
	public static var TYPE_SIMPLE(default, null) : String;
	
	/**
	* Constant for a validator of type PKIX.
	* @see #getInstance
	*/
	public static var TYPE_PKIX(default, null) : String;
	
	/**
	* Constant for a Generic variant of a validator.
	* @see #getInstance
	*/
	public static var VAR_GENERIC(default, null) : String;
	
	/**
	* Constant for a Code Signing variant of a validator.
	* @see #getInstance
	*/
	public static var VAR_CODE_SIGNING(default, null) : String;
	
	/**
	* Constant for a JCE Code Signing variant of a validator.
	* @see #getInstance
	*/
	public static var VAR_JCE_SIGNING(default, null) : String;
	
	/**
	* Constant for a TLS Client variant of a validator.
	* @see #getInstance
	*/
	public static var VAR_TLS_CLIENT(default, null) : String;
	
	/**
	* Constant for a TLS Server variant of a validator.
	* @see #getInstance
	*/
	public static var VAR_TLS_SERVER(default, null) : String;
	
	/**
	* Constant for a TSA Server variant of a validator.
	* @see #getInstance
	*/
	public static var VAR_TSA_SERVER(default, null) : String;
	
	/**
	* Constant for a Code Signing variant of a validator for use by
	* the J2SE Plugin/WebStart code.
	* @see #getInstance
	*/
	public static var VAR_PLUGIN_CODE_SIGNING(default, null) : String;
	
	/**
	* Get a new Validator instance using the trusted certificates from the
	* specified KeyStore as trust anchors.
	*/
	@:overload public static function getInstance(type : String, variant : String, ks : java.security.KeyStore) : sun.security.validator.Validator;
	
	/**
	* Get a new Validator instance using the Set of X509Certificates as trust
	* anchors.
	*/
	@:overload public static function getInstance(type : String, variant : String, trustedCerts : java.util.Collection<java.security.cert.X509Certificate>) : sun.security.validator.Validator;
	
	/**
	* Get a new Validator instance using the provided PKIXBuilderParameters.
	* This method can only be used with the PKIX validator.
	*/
	@:overload public static function getInstance(type : String, variant : String, params : java.security.cert.PKIXBuilderParameters) : sun.security.validator.Validator;
	
	/**
	* Validate the given certificate chain.
	*/
	@:overload @:final public function validate(chain : java.NativeArray<java.security.cert.X509Certificate>) : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Validate the given certificate chain. If otherCerts is non-null, it is
	* a Collection of additional X509Certificates that could be helpful for
	* path building.
	*/
	@:overload @:final public function validate(chain : java.NativeArray<java.security.cert.X509Certificate>, otherCerts : java.util.Collection<java.security.cert.X509Certificate>) : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Validate the given certificate chain. If otherCerts is non-null, it is
	* a Collection of additional X509Certificates that could be helpful for
	* path building.
	* <p>
	* Parameter is an additional parameter with variant specific meaning.
	* Currently, it is only defined for TLS_SERVER variant validators, where
	* it must be non null and the name of the TLS key exchange algorithm being
	* used (see JSSE X509TrustManager specification). In the future, it
	* could be used to pass in a PKCS#7 object for code signing to check time
	* stamps.
	* <p>
	* @return a non-empty chain that was used to validate the path. The
	* end entity cert is at index 0, the trust anchor at index n-1.
	*/
	@:overload @:final public function validate(chain : java.NativeArray<java.security.cert.X509Certificate>, otherCerts : java.util.Collection<java.security.cert.X509Certificate>, parameter : Dynamic) : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Validate the given certificate chain.
	*
	* @param chain the target certificate chain
	* @param otherCerts a Collection of additional X509Certificates that
	*        could be helpful for path building (or null)
	* @param constraints algorithm constraints for certification path
	*        processing
	* @param parameter an additional parameter with variant specific meaning.
	*        Currently, it is only defined for TLS_SERVER variant validators,
	*        where it must be non null and the name of the TLS key exchange
	*        algorithm being used (see JSSE X509TrustManager specification).
	*        In the future, it could be used to pass in a PKCS#7 object for
	*        code signing to check time stamps.
	* @return a non-empty chain that was used to validate the path. The
	*        end entity cert is at index 0, the trust anchor at index n-1.
	*/
	@:overload @:final public function validate(chain : java.NativeArray<java.security.cert.X509Certificate>, otherCerts : java.util.Collection<java.security.cert.X509Certificate>, constraints : java.security.AlgorithmConstraints, parameter : Dynamic) : java.NativeArray<java.security.cert.X509Certificate>;
	
	/**
	* Returns an immutable Collection of the X509Certificates this instance
	* uses as trust anchors.
	*/
	@:overload @:abstract public function getTrustedCertificates() : java.util.Collection<java.security.cert.X509Certificate>;
	
	/**
	* Set the date to be used for subsequent validations. NOTE that
	* this is not a supported API, it is provided to simplify
	* writing tests only.
	*
	* @deprecated
	*/
	@:overload public function setValidationDate(validationDate : java.util.Date) : Void;
	
	
}
