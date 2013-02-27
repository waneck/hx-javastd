package javax.net.ssl;
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
extern class SSLEngine
{
	/**
	* Constructor for an <code>SSLEngine</code> providing no hints
	* for an internal session reuse strategy.
	*
	* @see     SSLContext#createSSLEngine()
	* @see     SSLSessionContext
	*/
	@:overload private function new() : Void;
	
	/**
	* Constructor for an <code>SSLEngine</code>.
	* <P>
	* <code>SSLEngine</code> implementations may use the
	* <code>peerHost</code> and <code>peerPort</code> parameters as hints
	* for their internal session reuse strategy.
	* <P>
	* Some cipher suites (such as Kerberos) require remote hostname
	* information. Implementations of this class should use this
	* constructor to use Kerberos.
	* <P>
	* The parameters are not authenticated by the
	* <code>SSLEngine</code>.
	*
	* @param   peerHost the name of the peer host
	* @param   peerPort the port number of the peer
	* @see     SSLContext#createSSLEngine(String, int)
	* @see     SSLSessionContext
	*/
	@:overload private function new(peerHost : String, peerPort : Int) : Void;
	
	/**
	* Returns the host name of the peer.
	* <P>
	* Note that the value is not authenticated, and should not be
	* relied upon.
	*
	* @return  the host name of the peer, or null if nothing is
	*          available.
	*/
	@:overload public function getPeerHost() : String;
	
	/**
	* Returns the port number of the peer.
	* <P>
	* Note that the value is not authenticated, and should not be
	* relied upon.
	*
	* @return  the port number of the peer, or -1 if nothing is
	*          available.
	*/
	@:overload public function getPeerPort() : Int;
	
	/**
	* Attempts to encode a buffer of plaintext application data into
	* SSL/TLS network data.
	* <P>
	* An invocation of this method behaves in exactly the same manner
	* as the invocation:
	* <blockquote><pre>
	* {@link #wrap(ByteBuffer [], int, int, ByteBuffer)
	*     engine.wrap(new ByteBuffer [] { src }, 0, 1, dst);}
	* </pre</blockquote>
	*
	* @param   src
	*          a <code>ByteBuffer</code> containing outbound application data
	* @param   dst
	*          a <code>ByteBuffer</code> to hold outbound network data
	* @return  an <code>SSLEngineResult</code> describing the result
	*          of this operation.
	* @throws  SSLException
	*          A problem was encountered while processing the
	*          data that caused the <code>SSLEngine</code> to abort.
	*          See the class description for more information on
	*          engine closure.
	* @throws  ReadOnlyBufferException
	*          if the <code>dst</code> buffer is read-only.
	* @throws  IllegalArgumentException
	*          if either <code>src</code> or <code>dst</code>
	*          is null.
	* @throws  IllegalStateException if the client/server mode
	*          has not yet been set.
	* @see     #wrap(ByteBuffer [], int, int, ByteBuffer)
	*/
	@:overload public function wrap(src : java.nio.ByteBuffer, dst : java.nio.ByteBuffer) : javax.net.ssl.SSLEngineResult;
	
	/**
	* Attempts to encode plaintext bytes from a sequence of data
	* buffers into SSL/TLS network data.
	* <P>
	* An invocation of this method behaves in exactly the same manner
	* as the invocation:
	* <blockquote><pre>
	* {@link #wrap(ByteBuffer [], int, int, ByteBuffer)
	*     engine.wrap(srcs, 0, srcs.length, dst);}
	* </pre</blockquote>
	*
	* @param   srcs
	*          an array of <code>ByteBuffers</code> containing the
	*          outbound application data
	* @param   dst
	*          a <code>ByteBuffer</code> to hold outbound network data
	* @return  an <code>SSLEngineResult</code> describing the result
	*          of this operation.
	* @throws  SSLException
	*          A problem was encountered while processing the
	*          data that caused the <code>SSLEngine</code> to abort.
	*          See the class description for more information on
	*          engine closure.
	* @throws  ReadOnlyBufferException
	*          if the <code>dst</code> buffer is read-only.
	* @throws  IllegalArgumentException
	*          if either <code>srcs</code> or <code>dst</code>
	*          is null, or if any element in <code>srcs</code> is null.
	* @throws  IllegalStateException if the client/server mode
	*          has not yet been set.
	* @see     #wrap(ByteBuffer [], int, int, ByteBuffer)
	*/
	@:overload public function wrap(srcs : java.NativeArray<java.nio.ByteBuffer>, dst : java.nio.ByteBuffer) : javax.net.ssl.SSLEngineResult;
	
	/**
	* Attempts to encode plaintext bytes from a subsequence of data
	* buffers into SSL/TLS network data.  This <i>"gathering"</i>
	* operation encodes, in a single invocation, a sequence of bytes
	* from one or more of a given sequence of buffers.  Gathering
	* wraps are often useful when implementing network protocols or
	* file formats that, for example, group data into segments
	* consisting of one or more fixed-length headers followed by a
	* variable-length body.  See
	* {@link java.nio.channels.GatheringByteChannel} for more
	* information on gathering, and {@link
	* java.nio.channels.GatheringByteChannel#write(ByteBuffer[],
	* int, int)} for more information on the subsequence
	* behavior.
	* <P>
	* Depending on the state of the SSLEngine, this method may produce
	* network data without consuming any application data (for example,
	* it may generate handshake data.)
	* <P>
	* The application is responsible for reliably transporting the
	* network data to the peer, and for ensuring that data created by
	* multiple calls to wrap() is transported in the same order in which
	* it was generated.  The application must properly synchronize
	* multiple calls to this method.
	* <P>
	* If this <code>SSLEngine</code> has not yet started its initial
	* handshake, this method will automatically start the handshake.
	* <P>
	* This method will attempt to produce one SSL/TLS packet, and will
	* consume as much source data as possible, but will never consume
	* more than the sum of the bytes remaining in each buffer.  Each
	* <code>ByteBuffer</code>'s position is updated to reflect the
	* amount of data consumed or produced.  The limits remain the
	* same.
	* <P>
	* The underlying memory used by the <code>srcs</code> and
	* <code>dst ByteBuffer</code>s must not be the same.
	* <P>
	* See the class description for more information on engine closure.
	*
	* @param   srcs
	*          an array of <code>ByteBuffers</code> containing the
	*          outbound application data
	* @param   offset
	*          The offset within the buffer array of the first buffer from
	*          which bytes are to be retrieved; it must be non-negative
	*          and no larger than <code>srcs.length</code>
	* @param   length
	*          The maximum number of buffers to be accessed; it must be
	*          non-negative and no larger than
	*          <code>srcs.length</code>&nbsp;-&nbsp;<code>offset</code>
	* @param   dst
	*          a <code>ByteBuffer</code> to hold outbound network data
	* @return  an <code>SSLEngineResult</code> describing the result
	*          of this operation.
	* @throws  SSLException
	*          A problem was encountered while processing the
	*          data that caused the <code>SSLEngine</code> to abort.
	*          See the class description for more information on
	*          engine closure.
	* @throws  IndexOutOfBoundsException
	*          if the preconditions on the <code>offset</code> and
	*          <code>length</code> parameters do not hold.
	* @throws  ReadOnlyBufferException
	*          if the <code>dst</code> buffer is read-only.
	* @throws  IllegalArgumentException
	*          if either <code>srcs</code> or <code>dst</code>
	*          is null, or if any element in the <code>srcs</code>
	*          subsequence specified is null.
	* @throws  IllegalStateException if the client/server mode
	*          has not yet been set.
	* @see     java.nio.channels.GatheringByteChannel
	* @see     java.nio.channels.GatheringByteChannel#write(
	*              ByteBuffer[], int, int)
	*/
	@:overload @:abstract public function wrap(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int, dst : java.nio.ByteBuffer) : javax.net.ssl.SSLEngineResult;
	
	/**
	* Attempts to decode SSL/TLS network data into a plaintext
	* application data buffer.
	* <P>
	* An invocation of this method behaves in exactly the same manner
	* as the invocation:
	* <blockquote><pre>
	* {@link #unwrap(ByteBuffer, ByteBuffer [], int, int)
	*     engine.unwrap(src, new ByteBuffer [] { dst }, 0, 1);}
	* </pre</blockquote>
	*
	* @param   src
	*          a <code>ByteBuffer</code> containing inbound network data.
	* @param   dst
	*          a <code>ByteBuffer</code> to hold inbound application data.
	* @return  an <code>SSLEngineResult</code> describing the result
	*          of this operation.
	* @throws  SSLException
	*          A problem was encountered while processing the
	*          data that caused the <code>SSLEngine</code> to abort.
	*          See the class description for more information on
	*          engine closure.
	* @throws  ReadOnlyBufferException
	*          if the <code>dst</code> buffer is read-only.
	* @throws  IllegalArgumentException
	*          if either <code>src</code> or <code>dst</code>
	*          is null.
	* @throws  IllegalStateException if the client/server mode
	*          has not yet been set.
	* @see     #unwrap(ByteBuffer, ByteBuffer [], int, int)
	*/
	@:overload public function unwrap(src : java.nio.ByteBuffer, dst : java.nio.ByteBuffer) : javax.net.ssl.SSLEngineResult;
	
	/**
	* Attempts to decode SSL/TLS network data into a sequence of plaintext
	* application data buffers.
	* <P>
	* An invocation of this method behaves in exactly the same manner
	* as the invocation:
	* <blockquote><pre>
	* {@link #unwrap(ByteBuffer, ByteBuffer [], int, int)
	*     engine.unwrap(src, dsts, 0, dsts.length);}
	* </pre</blockquote>
	*
	* @param   src
	*          a <code>ByteBuffer</code> containing inbound network data.
	* @param   dsts
	*          an array of <code>ByteBuffer</code>s to hold inbound
	*          application data.
	* @return  an <code>SSLEngineResult</code> describing the result
	*          of this operation.
	* @throws  SSLException
	*          A problem was encountered while processing the
	*          data that caused the <code>SSLEngine</code> to abort.
	*          See the class description for more information on
	*          engine closure.
	* @throws  ReadOnlyBufferException
	*          if any of the <code>dst</code> buffers are read-only.
	* @throws  IllegalArgumentException
	*          if either <code>src</code> or <code>dsts</code>
	*          is null, or if any element in <code>dsts</code> is null.
	* @throws  IllegalStateException if the client/server mode
	*          has not yet been set.
	* @see     #unwrap(ByteBuffer, ByteBuffer [], int, int)
	*/
	@:overload public function unwrap(src : java.nio.ByteBuffer, dsts : java.NativeArray<java.nio.ByteBuffer>) : javax.net.ssl.SSLEngineResult;
	
	/**
	* Attempts to decode SSL/TLS network data into a subsequence of
	* plaintext application data buffers.  This <i>"scattering"</i>
	* operation decodes, in a single invocation, a sequence of bytes
	* into one or more of a given sequence of buffers.  Scattering
	* unwraps are often useful when implementing network protocols or
	* file formats that, for example, group data into segments
	* consisting of one or more fixed-length headers followed by a
	* variable-length body.  See
	* {@link java.nio.channels.ScatteringByteChannel} for more
	* information on scattering, and {@link
	* java.nio.channels.ScatteringByteChannel#read(ByteBuffer[],
	* int, int)} for more information on the subsequence
	* behavior.
	* <P>
	* Depending on the state of the SSLEngine, this method may consume
	* network data without producing any application data (for example,
	* it may consume handshake data.)
	* <P>
	* The application is responsible for reliably obtaining the network
	* data from the peer, and for invoking unwrap() on the data in the
	* order it was received.  The application must properly synchronize
	* multiple calls to this method.
	* <P>
	* If this <code>SSLEngine</code> has not yet started its initial
	* handshake, this method will automatically start the handshake.
	* <P>
	* This method will attempt to consume one complete SSL/TLS network
	* packet, but will never consume more than the sum of the bytes
	* remaining in the buffers.  Each <code>ByteBuffer</code>'s
	* position is updated to reflect the amount of data consumed or
	* produced.  The limits remain the same.
	* <P>
	* The underlying memory used by the <code>src</code> and
	* <code>dsts ByteBuffer</code>s must not be the same.
	* <P>
	* The inbound network buffer may be modified as a result of this
	* call:  therefore if the network data packet is required for some
	* secondary purpose, the data should be duplicated before calling this
	* method.  Note:  the network data will not be useful to a second
	* SSLEngine, as each SSLEngine contains unique random state which
	* influences the SSL/TLS messages.
	* <P>
	* See the class description for more information on engine closure.
	*
	* @param   src
	*          a <code>ByteBuffer</code> containing inbound network data.
	* @param   dsts
	*          an array of <code>ByteBuffer</code>s to hold inbound
	*          application data.
	* @param   offset
	*          The offset within the buffer array of the first buffer from
	*          which bytes are to be transferred; it must be non-negative
	*          and no larger than <code>dsts.length</code>.
	* @param   length
	*          The maximum number of buffers to be accessed; it must be
	*          non-negative and no larger than
	*          <code>dsts.length</code>&nbsp;-&nbsp;<code>offset</code>.
	* @return  an <code>SSLEngineResult</code> describing the result
	*          of this operation.
	* @throws  SSLException
	*          A problem was encountered while processing the
	*          data that caused the <code>SSLEngine</code> to abort.
	*          See the class description for more information on
	*          engine closure.
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <code>offset</code> and
	*          <code>length</code> parameters do not hold.
	* @throws  ReadOnlyBufferException
	*          if any of the <code>dst</code> buffers are read-only.
	* @throws  IllegalArgumentException
	*          if either <code>src</code> or <code>dsts</code>
	*          is null, or if any element in the <code>dsts</code>
	*          subsequence specified is null.
	* @throws  IllegalStateException if the client/server mode
	*          has not yet been set.
	* @see     java.nio.channels.ScatteringByteChannel
	* @see     java.nio.channels.ScatteringByteChannel#read(
	*              ByteBuffer[], int, int)
	*/
	@:overload @:abstract public function unwrap(src : java.nio.ByteBuffer, dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : javax.net.ssl.SSLEngineResult;
	
	/**
	* Returns a delegated <code>Runnable</code> task for
	* this <code>SSLEngine</code>.
	* <P>
	* <code>SSLEngine</code> operations may require the results of
	* operations that block, or may take an extended period of time to
	* complete.  This method is used to obtain an outstanding {@link
	* java.lang.Runnable} operation (task).  Each task must be assigned
	* a thread (possibly the current) to perform the {@link
	* java.lang.Runnable#run() run} operation.  Once the
	* <code>run</code> method returns, the <code>Runnable</code> object
	* is no longer needed and may be discarded.
	* <P>
	* Delegated tasks run in the <code>AccessControlContext</code>
	* in place when this object was created.
	* <P>
	* A call to this method will return each outstanding task
	* exactly once.
	* <P>
	* Multiple delegated tasks can be run in parallel.
	*
	* @return  a delegated <code>Runnable</code> task, or null
	*          if none are available.
	*/
	@:overload @:abstract public function getDelegatedTask() : java.lang.Runnable;
	
	/**
	* Signals that no more inbound network data will be sent
	* to this <code>SSLEngine</code>.
	* <P>
	* If the application initiated the closing process by calling
	* {@link #closeOutbound()}, under some circumstances it is not
	* required that the initiator wait for the peer's corresponding
	* close message.  (See section 7.2.1 of the TLS specification (<A
	* HREF="http://www.ietf.org/rfc/rfc2246.txt">RFC 2246</A>) for more
	* information on waiting for closure alerts.)  In such cases, this
	* method need not be called.
	* <P>
	* But if the application did not initiate the closure process, or
	* if the circumstances above do not apply, this method should be
	* called whenever the end of the SSL/TLS data stream is reached.
	* This ensures closure of the inbound side, and checks that the
	* peer followed the SSL/TLS close procedure properly, thus
	* detecting possible truncation attacks.
	* <P>
	* This method is idempotent:  if the inbound side has already
	* been closed, this method does not do anything.
	* <P>
	* {@link #wrap(ByteBuffer, ByteBuffer) wrap()} should be
	* called to flush any remaining handshake data.
	*
	* @throws  SSLException
	*          if this engine has not received the proper SSL/TLS close
	*          notification message from the peer.
	*
	* @see     #isInboundDone()
	* @see     #isOutboundDone()
	*/
	@:overload @:abstract public function closeInbound() : Void;
	
	/**
	* Returns whether {@link #unwrap(ByteBuffer, ByteBuffer)} will
	* accept any more inbound data messages.
	*
	* @return  true if the <code>SSLEngine</code> will not
	*          consume anymore network data (and by implication,
	*          will not produce any more application data.)
	* @see     #closeInbound()
	*/
	@:overload @:abstract public function isInboundDone() : Bool;
	
	/**
	* Signals that no more outbound application data will be sent
	* on this <code>SSLEngine</code>.
	* <P>
	* This method is idempotent:  if the outbound side has already
	* been closed, this method does not do anything.
	* <P>
	* {@link #wrap(ByteBuffer, ByteBuffer)} should be
	* called to flush any remaining handshake data.
	*
	* @see     #isOutboundDone()
	*/
	@:overload @:abstract public function closeOutbound() : Void;
	
	/**
	* Returns whether {@link #wrap(ByteBuffer, ByteBuffer)} will
	* produce any more outbound data messages.
	* <P>
	* Note that during the closure phase, a <code>SSLEngine</code> may
	* generate handshake closure data that must be sent to the peer.
	* <code>wrap()</code> must be called to generate this data.  When
	* this method returns true, no more outbound data will be created.
	*
	* @return  true if the <code>SSLEngine</code> will not produce
	*          any more network data
	*
	* @see     #closeOutbound()
	* @see     #closeInbound()
	*/
	@:overload @:abstract public function isOutboundDone() : Bool;
	
	/**
	* Returns the names of the cipher suites which could be enabled for use
	* on this engine.  Normally, only a subset of these will actually
	* be enabled by default, since this list may include cipher suites which
	* do not meet quality of service requirements for those defaults.  Such
	* cipher suites might be useful in specialized applications.
	*
	* @return  an array of cipher suite names
	* @see     #getEnabledCipherSuites()
	* @see     #setEnabledCipherSuites(String [])
	*/
	@:overload @:abstract public function getSupportedCipherSuites() : java.NativeArray<String>;
	
	/**
	* Returns the names of the SSL cipher suites which are currently
	* enabled for use on this engine.  When an SSLEngine is first
	* created, all enabled cipher suites support a minimum quality of
	* service.  Thus, in some environments this value might be empty.
	* <P>
	* Even if a suite has been enabled, it might never be used.  (For
	* example, the peer does not support it, the requisite
	* certificates/private keys for the suite are not available, or an
	* anonymous suite is enabled but authentication is required.)
	*
	* @return  an array of cipher suite names
	* @see     #getSupportedCipherSuites()
	* @see     #setEnabledCipherSuites(String [])
	*/
	@:overload @:abstract public function getEnabledCipherSuites() : java.NativeArray<String>;
	
	/**
	* Sets the cipher suites enabled for use on this engine.
	* <P>
	* Each cipher suite in the <code>suites</code> parameter must have
	* been listed by getSupportedCipherSuites(), or the method will
	* fail.  Following a successful call to this method, only suites
	* listed in the <code>suites</code> parameter are enabled for use.
	* <P>
	* See {@link #getEnabledCipherSuites()} for more information
	* on why a specific cipher suite may never be used on a engine.
	*
	* @param   suites Names of all the cipher suites to enable
	* @throws  IllegalArgumentException when one or more of the ciphers
	*          named by the parameter is not supported, or when the
	*          parameter is null.
	* @see     #getSupportedCipherSuites()
	* @see     #getEnabledCipherSuites()
	*/
	@:overload @:abstract public function setEnabledCipherSuites(suites : java.NativeArray<String>) : Void;
	
	/**
	* Returns the names of the protocols which could be enabled for use
	* with this <code>SSLEngine</code>.
	*
	* @return  an array of protocols supported
	*/
	@:overload @:abstract public function getSupportedProtocols() : java.NativeArray<String>;
	
	/**
	* Returns the names of the protocol versions which are currently
	* enabled for use with this <code>SSLEngine</code>.
	*
	* @return  an array of protocols
	* @see     #setEnabledProtocols(String [])
	*/
	@:overload @:abstract public function getEnabledProtocols() : java.NativeArray<String>;
	
	/**
	* Set the protocol versions enabled for use on this engine.
	* <P>
	* The protocols must have been listed by getSupportedProtocols()
	* as being supported.  Following a successful call to this method,
	* only protocols listed in the <code>protocols</code> parameter
	* are enabled for use.
	*
	* @param   protocols Names of all the protocols to enable.
	* @throws  IllegalArgumentException when one or more of
	*          the protocols named by the parameter is not supported or
	*          when the protocols parameter is null.
	* @see     #getEnabledProtocols()
	*/
	@:overload @:abstract public function setEnabledProtocols(protocols : java.NativeArray<String>) : Void;
	
	/**
	* Returns the <code>SSLSession</code> in use in this
	* <code>SSLEngine</code>.
	* <P>
	* These can be long lived, and frequently correspond to an entire
	* login session for some user.  The session specifies a particular
	* cipher suite which is being actively used by all connections in
	* that session, as well as the identities of the session's client
	* and server.
	* <P>
	* Unlike {@link SSLSocket#getSession()}
	* this method does not block until handshaking is complete.
	* <P>
	* Until the initial handshake has completed, this method returns
	* a session object which reports an invalid cipher suite of
	* "SSL_NULL_WITH_NULL_NULL".
	*
	* @return  the <code>SSLSession</code> for this <code>SSLEngine</code>
	* @see     SSLSession
	*/
	@:overload @:abstract public function getSession() : javax.net.ssl.SSLSession;
	
	/**
	* Returns the {@code SSLSession} being constructed during a SSL/TLS
	* handshake.
	* <p>
	* TLS protocols may negotiate parameters that are needed when using
	* an instance of this class, but before the {@code SSLSession} has
	* been completely initialized and made available via {@code getSession}.
	* For example, the list of valid signature algorithms may restrict
	* the type of certificates that can used during TrustManager
	* decisions, or the maximum TLS fragment packet sizes can be
	* resized to better support the network environment.
	* <p>
	* This method provides early access to the {@code SSLSession} being
	* constructed.  Depending on how far the handshake has progressed,
	* some data may not yet be available for use.  For example, if a
	* remote server will be sending a Certificate chain, but that chain
	* has yet not been processed, the {@code getPeerCertificates}
	* method of {@code SSLSession} will throw a
	* SSLPeerUnverifiedException.  Once that chain has been processed,
	* {@code getPeerCertificates} will return the proper value.
	*
	* @see SSLSocket
	* @see SSLSession
	* @see ExtendedSSLSession
	* @see X509ExtendedKeyManager
	* @see X509ExtendedTrustManager
	*
	* @return null if this instance is not currently handshaking, or
	*         if the current handshake has not progressed far enough to
	*         create a basic SSLSession.  Otherwise, this method returns the
	*         {@code SSLSession} currently being negotiated.
	* @throws UnsupportedOperationException if the underlying provider
	*         does not implement the operation.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function getHandshakeSession() : javax.net.ssl.SSLSession;
	
	/**
	* Initiates handshaking (initial or renegotiation) on this SSLEngine.
	* <P>
	* This method is not needed for the initial handshake, as the
	* <code>wrap()</code> and <code>unwrap()</code> methods will
	* implicitly call this method if handshaking has not already begun.
	* <P>
	* Note that the peer may also request a session renegotiation with
	* this <code>SSLEngine</code> by sending the appropriate
	* session renegotiate handshake message.
	* <P>
	* Unlike the {@link SSLSocket#startHandshake()
	* SSLSocket#startHandshake()} method, this method does not block
	* until handshaking is completed.
	* <P>
	* To force a complete SSL/TLS session renegotiation, the current
	* session should be invalidated prior to calling this method.
	* <P>
	* Some protocols may not support multiple handshakes on an existing
	* engine and may throw an <code>SSLException</code>.
	*
	* @throws  SSLException
	*          if a problem was encountered while signaling the
	*          <code>SSLEngine</code> to begin a new handshake.
	*          See the class description for more information on
	*          engine closure.
	* @throws  IllegalStateException if the client/server mode
	*          has not yet been set.
	* @see     SSLSession#invalidate()
	*/
	@:overload @:abstract public function beginHandshake() : Void;
	
	/**
	* Returns the current handshake status for this <code>SSLEngine</code>.
	*
	* @return  the current <code>SSLEngineResult.HandshakeStatus</code>.
	*/
	@:overload @:abstract public function getHandshakeStatus() : javax.net.ssl.SSLEngineResult.SSLEngineResult_HandshakeStatus;
	
	/**
	* Configures the engine to use client (or server) mode when
	* handshaking.
	* <P>
	* This method must be called before any handshaking occurs.
	* Once handshaking has begun, the mode can not be reset for the
	* life of this engine.
	* <P>
	* Servers normally authenticate themselves, and clients
	* are not required to do so.
	*
	* @param   mode true if the engine should start its handshaking
	*          in "client" mode
	* @throws  IllegalArgumentException if a mode change is attempted
	*          after the initial handshake has begun.
	* @see     #getUseClientMode()
	*/
	@:overload @:abstract public function setUseClientMode(mode : Bool) : Void;
	
	/**
	* Returns true if the engine is set to use client mode when
	* handshaking.
	*
	* @return  true if the engine should do handshaking
	*          in "client" mode
	* @see     #setUseClientMode(boolean)
	*/
	@:overload @:abstract public function getUseClientMode() : Bool;
	
	/**
	* Configures the engine to <i>require</i> client authentication.  This
	* option is only useful for engines in the server mode.
	* <P>
	* An engine's client authentication setting is one of the following:
	* <ul>
	* <li> client authentication required
	* <li> client authentication requested
	* <li> no client authentication desired
	* </ul>
	* <P>
	* Unlike {@link #setWantClientAuth(boolean)}, if this option is set and
	* the client chooses not to provide authentication information
	* about itself, <i>the negotiations will stop and the engine will
	* begin its closure procedure</i>.
	* <P>
	* Calling this method overrides any previous setting made by
	* this method or {@link #setWantClientAuth(boolean)}.
	*
	* @param   need set to true if client authentication is required,
	*          or false if no client authentication is desired.
	* @see     #getNeedClientAuth()
	* @see     #setWantClientAuth(boolean)
	* @see     #getWantClientAuth()
	* @see     #setUseClientMode(boolean)
	*/
	@:overload @:abstract public function setNeedClientAuth(need : Bool) : Void;
	
	/**
	* Returns true if the engine will <i>require</i> client authentication.
	* This option is only useful to engines in the server mode.
	*
	* @return  true if client authentication is required,
	*          or false if no client authentication is desired.
	* @see     #setNeedClientAuth(boolean)
	* @see     #setWantClientAuth(boolean)
	* @see     #getWantClientAuth()
	* @see     #setUseClientMode(boolean)
	*/
	@:overload @:abstract public function getNeedClientAuth() : Bool;
	
	/**
	* Configures the engine to <i>request</i> client authentication.
	* This option is only useful for engines in the server mode.
	* <P>
	* An engine's client authentication setting is one of the following:
	* <ul>
	* <li> client authentication required
	* <li> client authentication requested
	* <li> no client authentication desired
	* </ul>
	* <P>
	* Unlike {@link #setNeedClientAuth(boolean)}, if this option is set and
	* the client chooses not to provide authentication information
	* about itself, <i>the negotiations will continue</i>.
	* <P>
	* Calling this method overrides any previous setting made by
	* this method or {@link #setNeedClientAuth(boolean)}.
	*
	* @param   want set to true if client authentication is requested,
	*          or false if no client authentication is desired.
	* @see     #getWantClientAuth()
	* @see     #setNeedClientAuth(boolean)
	* @see     #getNeedClientAuth()
	* @see     #setUseClientMode(boolean)
	*/
	@:overload @:abstract public function setWantClientAuth(want : Bool) : Void;
	
	/**
	* Returns true if the engine will <i>request</i> client authentication.
	* This option is only useful for engines in the server mode.
	*
	* @return  true if client authentication is requested,
	*          or false if no client authentication is desired.
	* @see     #setNeedClientAuth(boolean)
	* @see     #getNeedClientAuth()
	* @see     #setWantClientAuth(boolean)
	* @see     #setUseClientMode(boolean)
	*/
	@:overload @:abstract public function getWantClientAuth() : Bool;
	
	/**
	* Controls whether new SSL sessions may be established by this engine.
	* If session creations are not allowed, and there are no
	* existing sessions to resume, there will be no successful
	* handshaking.
	*
	* @param   flag true indicates that sessions may be created; this
	*          is the default.  false indicates that an existing session
	*          must be resumed
	* @see     #getEnableSessionCreation()
	*/
	@:overload @:abstract public function setEnableSessionCreation(flag : Bool) : Void;
	
	/**
	* Returns true if new SSL sessions may be established by this engine.
	*
	* @return  true indicates that sessions may be created; this
	*          is the default.  false indicates that an existing session
	*          must be resumed
	* @see     #setEnableSessionCreation(boolean)
	*/
	@:overload @:abstract public function getEnableSessionCreation() : Bool;
	
	/**
	* Returns the SSLParameters in effect for this SSLEngine.
	* The ciphersuites and protocols of the returned SSLParameters
	* are always non-null.
	*
	* @return the SSLParameters in effect for this SSLEngine.
	* @since 1.6
	*/
	@:require(java6) @:overload public function getSSLParameters() : javax.net.ssl.SSLParameters;
	
	/**
	* Applies SSLParameters to this engine.
	*
	* <p>This means:
	* <ul>
	* <li>if <code>params.getCipherSuites()</code> is non-null,
	*   <code>setEnabledCipherSuites()</code> is called with that value
	* <li>if <code>params.getProtocols()</code> is non-null,
	*   <code>setEnabledProtocols()</code> is called with that value
	* <li>if <code>params.getNeedClientAuth()</code> or
	*   <code>params.getWantClientAuth()</code> return <code>true</code>,
	*   <code>setNeedClientAuth(true)</code> and
	*   <code>setWantClientAuth(true)</code> are called, respectively;
	*   otherwise <code>setWantClientAuth(false)</code> is called.
	* </ul>
	*
	* @param params the parameters
	* @throws IllegalArgumentException if the setEnabledCipherSuites() or
	*    the setEnabledProtocols() call fails
	* @since 1.6
	*/
	@:require(java6) @:overload public function setSSLParameters(params : javax.net.ssl.SSLParameters) : Void;
	
	
}
