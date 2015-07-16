/**
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

goog.provide('org.apache.flex.html.supportClasses.ScrollingViewport');

goog.require('org.apache.flex.core.IItemRenderer');
goog.require('org.apache.flex.core.IItemRendererFactory');
goog.require('org.apache.flex.core.UIBase');
goog.require('org.apache.flex.events.Event');
goog.require('org.apache.flex.utils.MXMLDataInterpreter');



/**
 * @constructor
 */
org.apache.flex.html.supportClasses.ScrollingViewport =
function() {
};


/**
 * Metadata
 *
 * @type {Object.<string, Array.<Object>>}
 */
org.apache.flex.html.supportClasses.ScrollingViewport.prototype.FLEXJS_CLASS_INFO =
    { names: [{ name: 'ScrollingViewport',
                qName: 'org.apache.flex.html.supportClasses.ScrollingViewport' }]};



Object.defineProperties(org.apache.flex.html.supportClasses.ScrollingViewport.prototype, {
    /** @export */
    model: {
        /** @this {org.apache.flex.html.supportClasses.ScrollingViewport} */
        get: function() {
            return this.model_;
        },
        /** @this {org.apache.flex.html.supportClasses.ScrollingViewport} */
        set: function(value) {
            this.model_ = value;
        }
    }
});
