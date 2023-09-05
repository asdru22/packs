global pageOffset
pageOffset = 1

def addToIndex(recipe,entries):
    r = "{\"translate\":\"item.asd.gui."+recipe.getResult()+"\",\"color\":\"white\",\"font\":\"asd:items\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\""+str(entries+pageOffset)+"\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"translate\":\"book.asd.to_page\",\"with\":[\""+str(entries)+"\"]}]}},\" \","
    if(entries%5==0): r += "\"\n\n\","
    return r