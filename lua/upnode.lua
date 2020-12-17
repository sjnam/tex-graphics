local mpresty = require "mpresty"


local function fn_update_node (doc, node, uri, content)
   node.localName = "p"
   node:removeAttribute("width")
   -- pre
   local pre = doc:createElement("pre")
   pre.textContent = content
   node:appendChild(pre)
   -- img
   local img = doc:createElement("img")
   img:setAttribute("src", uri)
   img:setAttribute("width", "200")
   node:appendChild(img)
   -- hr
   local hr = doc:createElement("hr")
   node:appendChild(hr)
end


local gx = mpresty.new {
   fn_update_node = {
      ['metapost'] = fn_update_node,
      ['tikz'] = fn_update_node
   }
}

gx:render()