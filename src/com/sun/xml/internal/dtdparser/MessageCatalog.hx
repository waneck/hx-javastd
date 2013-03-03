package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class MessageCatalog
{
	/**
	* Create a message catalog for use by classes in the same package
	* as the specified class.  This uses <em>Messages</em> resource
	* bundles in the <em>resources</em> sub-package of class passed as
	* a parameter.
	*
	* @param packageMember Class whose package has localized messages
	*/
	@:overload @:protected private function new(packageMember : Class<Dynamic>) : Void;
	
	/**
	* Get a message localized to the specified locale, using the message ID
	* and package name if no message is available.  The locale is normally
	* that of the client of a service, chosen with knowledge that both the
	* client and this server support that locale.  There are two error
	* cases:  first, when the specified locale is unsupported or null, the
	* default locale is used if possible; second, when no bundle supports
	* that locale, the message ID and package name are used.
	*
	* @param locale    The locale of the message to use.  If this is null,
	*                  the default locale will be used.
	* @param messageId The ID of the message to use.
	* @return The message, localized as described above.
	*/
	@:overload @:public public function getMessage(locale : java.util.Locale, messageId : String) : String;
	
	/**
	* Format a message localized to the specified locale, using the message
	* ID with its package name if none is available.  The locale is normally
	* the client of a service, chosen with knowledge that both the client
	* server support that locale.  There are two error cases:  first, if the
	* specified locale is unsupported or null, the default locale is used if
	* possible; second, when no bundle supports that locale, the message ID
	* and package name are used.
	*
	* @param locale     The locale of the message to use.  If this is null,
	*                   the default locale will be used.
	* @param messageId  The ID of the message format to use.
	* @param parameters Used when formatting the message.  Objects in
	*                   this list are turned to strings if they are not Strings, Numbers,
	*                   or Dates (that is, if MessageFormat would treat them as errors).
	* @return The message, localized as described above.
	* @see java.text.MessageFormat
	*/
	@:overload @:public public function getMessage(locale : java.util.Locale, messageId : String, parameters : java.NativeArray<Dynamic>) : String;
	
	/**
	* Chooses a client locale to use, using the first language specified in
	* the list that is supported by this catalog.  If none of the specified
	* languages is supported, a null value is returned.  Such a list of
	* languages might be provided in an HTTP/1.1 "Accept-Language" header
	* field, or through some other content negotiation mechanism.
	* <p/>
	* <P> The language specifiers recognized are RFC 1766 style ("fr" for
	* all French, "fr-ca" for Canadian French), although only the strict
	* ISO subset (two letter language and country specifiers) is currently
	* supported.  Java-style locale strings ("fr_CA") are also supported.
	*
	* @param languages Array of language specifiers, ordered with the most
	*                  preferable one at the front.  For example, "en-ca" then "fr-ca",
	*                  followed by "zh_CN".
	* @return The most preferable supported locale, or null.
	* @see java.util.Locale
	*/
	@:overload @:public public function chooseLocale(languages : java.NativeArray<String>) : java.util.Locale;
	
	/**
	* Returns true iff the specified locale has explicit language support.
	* For example, the traditional Chinese locale "zh_TW" has such support
	* if there are message bundles suffixed with either "zh_TW" or "zh".
	* <p/>
	* <P> This method is used to bypass part of the search path mechanism
	* of the <code>ResourceBundle</code> class, specifically the parts which
	* force use of default locales and bundles.  Such bypassing is required
	* in order to enable use of a client's preferred languages.  Following
	* the above example, if a client prefers "zh_TW" but can also accept
	* "ja", this method would be used to detect that there are no "zh_TW"
	* resource bundles and hence that "ja" messages should be used.  This
	* bypasses the ResourceBundle mechanism which will return messages in
	* some other locale (picking some hard-to-anticipate default) instead
	* of reporting an error and letting the client choose another locale.
	*
	* @param localeName A standard Java locale name, using two character
	*                   language codes optionally suffixed by country codes.
	* @return True iff the language of that locale is supported.
	* @see java.util.Locale
	*/
	@:overload @:public public function isLocaleSupported(localeName : String) : Bool;
	
	
}
