package sun.security.ssl;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class HandshakeMessage
{
	/* Class and subclass dynamic debugging support */
	@:public @:static @:final public static var debug(default, null) : sun.security.ssl.Debug;
	
	
}
/*
* HelloRequest ... SERVER --> CLIENT
*
* Server can ask the client to initiate a new handshake, e.g. to change
* session parameters after a connection has been (re)established.
*/
@:native('sun$security$ssl$HandshakeMessage$HelloRequest') @:internal extern class HandshakeMessage_HelloRequest extends sun.security.ssl.HandshakeMessage
{
	
}
/*
* ClientHello ... CLIENT --> SERVER
*
* Client initiates handshake by telling server what it wants, and what it
* can support (prioritized by what's first in the ciphe suite list).
*
* By RFC2246:7.4.1.2 it's explicitly anticipated that this message
* will have more data added at the end ... e.g. what CAs the client trusts.
* Until we know how to parse it, we will just read what we know
* about, and let our caller handle the jumps over unknown data.
*/
@:native('sun$security$ssl$HandshakeMessage$ClientHello') @:internal extern class HandshakeMessage_ClientHello extends sun.security.ssl.HandshakeMessage
{
	
}
/*
* ServerHello ... SERVER --> CLIENT
*
* Server chooses protocol options from among those it supports and the
* client supports.  Then it sends the basic session descriptive parameters
* back to the client.
*/
@:native('sun$security$ssl$HandshakeMessage$ServerHello') @:internal extern class HandshakeMessage_ServerHello extends sun.security.ssl.HandshakeMessage
{
	
}
/*
* CertificateMsg ... send by both CLIENT and SERVER
*
* Each end of a connection may need to pass its certificate chain to
* the other end.  Such chains are intended to validate an identity with
* reference to some certifying authority.  Examples include companies
* like Verisign, or financial institutions.  There's some control over
* the certifying authorities which are sent.
*
* NOTE: that these messages might be huge, taking many handshake records.
* Up to 2^48 bytes of certificate may be sent, in records of at most 2^14
* bytes each ... up to 2^32 records sent on the output stream.
*/
@:native('sun$security$ssl$HandshakeMessage$CertificateMsg') @:internal extern class HandshakeMessage_CertificateMsg extends sun.security.ssl.HandshakeMessage
{
	
}
/*
* ServerKeyExchange ... SERVER --> CLIENT
*
* The cipher suite selected, when combined with the certificate exchanged,
* implies one of several different kinds of key exchange.  Most current
* cipher suites require the server to send more than its certificate.
*
* The primary exceptions are when a server sends an encryption-capable
* RSA public key in its cert, to be used with RSA (or RSA_export) key
* exchange; and when a server sends its Diffie-Hellman cert.  Those kinds
* of key exchange do not require a ServerKeyExchange message.
*
* Key exchange can be viewed as having three modes, which are explicit
* for the Diffie-Hellman flavors and poorly specified for RSA ones:
*
*      - "Ephemeral" keys.  Here, a "temporary" key is allocated by the
*        server, and signed.  Diffie-Hellman keys signed using RSA or
*        DSS are ephemeral (DHE flavor).  RSA keys get used to do the same
*        thing, to cut the key size down to 512 bits (export restrictions)
*        or for signing-only RSA certificates.
*
*      - Anonymity.  Here no server certificate is sent, only the public
*        key of the server.  This case is subject to man-in-the-middle
*        attacks.  This can be done with Diffie-Hellman keys (DH_anon) or
*        with RSA keys, but is only used in SSLv3 for DH_anon.
*
*      - "Normal" case.  Here a server certificate is sent, and the public
*        key there is used directly in exchanging the premaster secret.
*        For example, Diffie-Hellman "DH" flavor, and any RSA flavor with
*        only 512 bit keys.
*
* If a server certificate is sent, there is no anonymity.  However,
* when a certificate is sent, ephemeral keys may still be used to
* exchange the premaster secret.  That's how RSA_EXPORT often works,
* as well as how the DHE_* flavors work.
*/
@:native('sun$security$ssl$HandshakeMessage$ServerKeyExchange') @:internal extern class HandshakeMessage_ServerKeyExchange extends sun.security.ssl.HandshakeMessage
{
	
}
/*
* Using RSA for Key Exchange:  exchange a session key that's not as big
* as the signing-only key.  Used for export applications, since exported
* RSA encryption keys can't be bigger than 512 bytes.
*
* This is never used when keys are 512 bits or smaller, and isn't used
* on "US Domestic" ciphers in any case.
*/
@:native('sun$security$ssl$HandshakeMessage$RSA_ServerKeyExchange') @:internal extern class HandshakeMessage_RSA_ServerKeyExchange extends sun.security.ssl.HandshakeMessage.HandshakeMessage_ServerKeyExchange
{
	
}
/*
* Using Diffie-Hellman algorithm for key exchange.  All we really need to
* do is securely get Diffie-Hellman keys (using the same P, G parameters)
* to our peer, then we automatically have a shared secret without need
* to exchange any more data.  (D-H only solutions, such as SKIP, could
* eliminate key exchange negotiations and get faster connection setup.
* But they still need a signature algorithm like DSS/DSA to support the
* trusted distribution of keys without relying on unscalable physical
* key distribution systems.)
*
* This class supports several DH-based key exchange algorithms, though
* perhaps eventually each deserves its own class.  Notably, this has
* basic support for DH_anon and its DHE_DSS and DHE_RSA signed variants.
*/
@:native('sun$security$ssl$HandshakeMessage$DH_ServerKeyExchange') @:internal extern class HandshakeMessage_DH_ServerKeyExchange extends sun.security.ssl.HandshakeMessage.HandshakeMessage_ServerKeyExchange
{
	
}
/*
* ECDH server key exchange message. Sent by the server for ECDHE and ECDH_anon
* ciphersuites to communicate its ephemeral public key (including the
* EC domain parameters).
*
* We support named curves only, no explicitly encoded curves.
*/
@:native('sun$security$ssl$HandshakeMessage$ECDH_ServerKeyExchange') @:internal extern class HandshakeMessage_ECDH_ServerKeyExchange extends sun.security.ssl.HandshakeMessage.HandshakeMessage_ServerKeyExchange
{
	
}
@:native('sun$security$ssl$HandshakeMessage$DistinguishedName') @:internal extern class HandshakeMessage_DistinguishedName
{
	
}
/*
* CertificateRequest ... SERVER --> CLIENT
*
* Authenticated servers may ask clients to authenticate themselves
* in turn, using this message.
*
* Prior to TLS 1.2, the structure of the message is defined as:
*     struct {
*         ClientCertificateType certificate_types<1..2^8-1>;
*         DistinguishedName certificate_authorities<0..2^16-1>;
*     } CertificateRequest;
*
* In TLS 1.2, the structure is changed to:
*     struct {
*         ClientCertificateType certificate_types<1..2^8-1>;
*         SignatureAndHashAlgorithm
*           supported_signature_algorithms<2^16-1>;
*         DistinguishedName certificate_authorities<0..2^16-1>;
*     } CertificateRequest;
*
*/
@:native('sun$security$ssl$HandshakeMessage$CertificateRequest') @:internal extern class HandshakeMessage_CertificateRequest extends sun.security.ssl.HandshakeMessage
{
	
}
/*
* ServerHelloDone ... SERVER --> CLIENT
*
* When server's done sending its messages in response to the client's
* "hello" (e.g. its own hello, certificate, key exchange message, perhaps
* client certificate request) it sends this message to flag that it's
* done that part of the handshake.
*/
@:native('sun$security$ssl$HandshakeMessage$ServerHelloDone') @:internal extern class HandshakeMessage_ServerHelloDone extends sun.security.ssl.HandshakeMessage
{
	
}
/*
* CertificateVerify ... CLIENT --> SERVER
*
* Sent after client sends signature-capable certificates (e.g. not
* Diffie-Hellman) to verify.
*/
@:native('sun$security$ssl$HandshakeMessage$CertificateVerify') @:internal extern class HandshakeMessage_CertificateVerify extends sun.security.ssl.HandshakeMessage
{
	
}
/*
* FINISHED ... sent by both CLIENT and SERVER
*
* This is the FINISHED message as defined in the SSL and TLS protocols.
* Both protocols define this handshake message slightly differently.
* This class supports both formats.
*
* When handshaking is finished, each side sends a "change_cipher_spec"
* record, then immediately sends a "finished" handshake message prepared
* according to the newly adopted cipher spec.
*
* NOTE that until this is sent, no application data may be passed, unless
* some non-default cipher suite has already been set up on this connection
* connection (e.g. a previous handshake arranged one).
*/
@:native('sun$security$ssl$HandshakeMessage$Finished') @:internal extern class HandshakeMessage_Finished extends sun.security.ssl.HandshakeMessage
{
	
}
