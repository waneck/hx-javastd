package javax.naming;
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
extern class ReferralException extends javax.naming.NamingException
{
	/**
	* Constructs a new instance of ReferralException using the
	* explanation supplied. All other fields are set to null.
	*
	* @param   explanation     Additional detail about this exception. Can be null.
	* @see java.lang.Throwable#getMessage
	*/
	@:overload @:protected private function new(explanation : String) : Void;
	
	/**
	* Constructs a new instance of ReferralException.
	* All fields are set to null.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Retrieves information (such as URLs) related to this referral.
	* The program may examine or display this information
	* to the user to determine whether to continue with the referral,
	* or to determine additional information needs to be supplied in order
	* to continue with the referral.
	*
	* @return Non-null referral information related to this referral.
	*/
	@:overload @:public @:abstract public function getReferralInfo() : Dynamic;
	
	/**
	* Retrieves the context at which to continue the method.
	* Regardless of whether a referral is encountered directly during a
	* context operation, or indirectly, for example, during a search
	* enumeration, the referral exception should provide a context
	* at which to continue the operation. The referral context is
	* created using the environment properties of the context
	* that threw the ReferralException.
	*
	*<p>
	* To continue the operation, the client program should re-invoke
	* the method using the same arguments as the original invocation.
	*
	* @return The non-null context at which to continue the method.
	* @exception NamingException If a naming exception was encountered.
	* Call either <tt>retryReferral()</tt> or <tt>skipReferral()</tt>
	* to continue processing referrals.
	*/
	@:overload @:public @:abstract public function getReferralContext() : javax.naming.Context;
	
	/**
	* Retrieves the context at which to continue the method using
	* environment properties.
	* Regardless of whether a referral is encountered directly during a
	* context operation, or indirectly, for example, during a search
	* enumeration, the referral exception should provide a context
	* at which to continue the operation.
	*<p>
	* The referral context is created using <tt>env</tt> as its environment
	* properties.
	* This method should be used instead of the no-arg overloaded form
	* when the caller needs to use different environment properties for
	* the referral context. It might need to do this, for example, when
	* it needs to supply different authentication information to the referred
	* server in order to create the referral context.
	*<p>
	* To continue the operation, the client program should re-invoke
	* the method using the same arguments as the original invocation.
	*
	* @param env The possibly null environment to use when retrieving the
	*          referral context. If null, no environment properties will be used.
	*
	* @return The non-null context at which to continue the method.
	* @exception NamingException If a naming exception was encountered.
	* Call either <tt>retryReferral()</tt> or <tt>skipReferral()</tt>
	* to continue processing referrals.
	*/
	@:overload @:public @:abstract public function getReferralContext(env : java.util.Hashtable<Dynamic, Dynamic>) : javax.naming.Context;
	
	/**
	* Discards the referral about to be processed.
	* A call to this method should be followed by a call to
	* <code>getReferralContext</code> to allow the processing of
	* other referrals to continue.
	* The following code fragment shows a typical usage pattern.
	* <p><blockquote><pre>
	*  } catch (ReferralException e) {
	*      if (!shallIFollow(e.getReferralInfo())) {
	*          if (!e.skipReferral()) {
	*              return;
	*          }
	*      }
	*      ctx = e.getReferralContext();
	*  }
	* </pre></blockquote>
	*
	* @return true If more referral processing is pending; false otherwise.
	*/
	@:overload @:public @:abstract public function skipReferral() : Bool;
	
	/**
	* Retries the referral currently being processed.
	* A call to this method should be followed by a call to
	* <code>getReferralContext</code> to allow the current
	* referral to be retried.
	* The following code fragment shows a typical usage pattern.
	* <p><blockquote><pre>
	*  } catch (ReferralException e) {
	*      while (true) {
	*          try {
	*              ctx = e.getReferralContext(env);
	*              break;
	*          } catch (NamingException ne) {
	*              if (! shallIRetry()) {
	*                  return;
	*              }
	*              // modify environment properties (env), if necessary
	*              e.retryReferral();
	*          }
	*      }
	*  }
	* </pre></blockquote>
	*
	*/
	@:overload @:public @:abstract public function retryReferral() : Void;
	
	
}
