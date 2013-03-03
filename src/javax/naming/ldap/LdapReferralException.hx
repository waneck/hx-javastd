package javax.naming.ldap;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class LdapReferralException extends javax.naming.ReferralException
{
	/**
	* Constructs a new instance of LdapReferralException using the
	* explanation supplied. All other fields are set to null.
	*
	* @param   explanation     Additional detail about this exception. Can be null.
	* @see java.lang.Throwable#getMessage
	*/
	@:overload @:protected private function new(explanation : String) : Void;
	
	/**
	* Constructs a new instance of LdapReferralException.
	* All fields are set to null.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Retrieves the context at which to continue the method using the
	* context's environment and no controls.
	* The referral context is created using the environment properties of
	* the context that threw the <tt>ReferralException</tt> and no controls.
	*<p>
	* This method is equivalent to
	*<blockquote><pre>
	* getReferralContext(ctx.getEnvironment(), null);
	*</pre></blockquote>
	* where <tt>ctx</tt> is the context that threw the <tt>ReferralException.</tt>
	*<p>
	* It is overridden in this class for documentation purposes only.
	* See <tt>ReferralException</tt> for how to use this method.
	*
	* @return The non-null context at which to continue the method.
	* @exception NamingException If a naming exception was encountered.
	* Call either <tt>retryReferral()</tt> or <tt>skipReferral()</tt>
	* to continue processing referrals.
	*/
	@:overload @:public @:abstract override public function getReferralContext() : javax.naming.Context;
	
	/**
	* Retrieves the context at which to continue the method using
	* environment properties and no controls.
	* The referral context is created using <tt>env</tt> as its environment
	* properties and no controls.
	*<p>
	* This method is equivalent to
	*<blockquote><pre>
	* getReferralContext(env, null);
	*</pre></blockquote>
	*<p>
	* It is overridden in this class for documentation purposes only.
	* See <tt>ReferralException</tt> for how to use this method.
	*
	* @param env The possibly null environment to use when retrieving the
	*          referral context. If null, no environment properties will be used.
	*
	* @return The non-null context at which to continue the method.
	* @exception NamingException If a naming exception was encountered.
	* Call either <tt>retryReferral()</tt> or <tt>skipReferral()</tt>
	* to continue processing referrals.
	*/
	@:overload @:public @:abstract override public function getReferralContext(env : java.util.Hashtable<Dynamic, Dynamic>) : javax.naming.Context;
	
	/**
	* Retrieves the context at which to continue the method using
	* request controls and environment properties.
	* Regardless of whether a referral is encountered directly during a
	* context operation, or indirectly, for example, during a search
	* enumeration, the referral exception should provide a context
	* at which to continue the operation.
	* To continue the operation, the client program should re-invoke
	* the method using the same arguments as the original invocation.
	*<p>
	* <tt>reqCtls</tt> is used when creating the connection to the referred
	* server. These controls will be used as the connection request controls for
	* the context and context instances
	* derived from the context.
	* <tt>reqCtls</tt> will also be the context's request controls for
	* subsequent context operations. See the <tt>LdapContext</tt> class
	* description for details.
	*<p>
	* This method should be used instead of the other two overloaded forms
	* when the caller needs to supply request controls for creating
	* the referral context. It might need to do this, for example, when
	* it needs to supply special controls relating to authentication.
	*<p>
	* Service provider implementors should read the "Service Provider" section
	* in the <tt>LdapContext</tt> class description for implementation details.
	*
	* @param reqCtls The possibly null request controls to use for the new context.
	* If null or the empty array means use no request controls.
	* @param env The possibly null environment properties to use when
	* for the new context. If null, the context is initialized with no environment
	* properties.
	* @return The non-null context at which to continue the method.
	* @exception NamingException If a naming exception was encountered.
	* Call either <tt>retryReferral()</tt> or <tt>skipReferral()</tt>
	* to continue processing referrals.
	*/
	@:overload @:public @:abstract public function getReferralContext(env : java.util.Hashtable<Dynamic, Dynamic>, reqCtls : java.NativeArray<javax.naming.ldap.Control>) : javax.naming.Context;
	
	
}
