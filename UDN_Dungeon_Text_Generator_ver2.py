import pandas as pd

# Makes the UDN Data text for any number of dungeons as long as the excel format is ok

# Skip the first 2 rows
df = pd.read_excel('UDN_Dungeon_Text_Generator_ExcelTemplate.xlsx', sheet_name='Dungeon_Text_Generator', skiprows = 1, header = 0)

'''
# Columns: 
0: "Dungeon_ID"
1: "Dungeon_name_en"
2: "Dungeon_name_es"
3: "Trash or BOSSNAME"
4: "Section_name_en"
5: "Section_name_es"

Mechanics

6: "type"
7: "role"
8: "text_prop"
9: "en"
10: "es"
'''
def Trash(file, row):
    file.write('\t--' + str(df.iloc[row,1]) + '\n')
    file.write('\t[' + str(int(df.iloc[row,0])) + '] = {\n')
    file.write('\tname = { en = "' + str(df.iloc[row,1]) + '", es = "' + str(df.iloc[row,2]) + '" },\n\n')
    #Trash
    file.write('\t["Trash"] = {\n')
    file.write('\t\tname = { en = "Trash", es = "Pulls" },\n')
    while str(df.iloc[row,3]) == "Trash":
        if str(df.iloc[row,8]) == "nan" and str(df.iloc[row,7]) == "nan": #text_prop and role doesn't exist
            file.write('\t\t{ en = "' + str(df.iloc[row,9]) + '",\n\t\t es = "' + str(df.iloc[row,10]) + '",\n\t\t type = "' + str(df.iloc[row,6]) + '" },\n\n')
        elif str(df.iloc[row,8]) != "nan":  #text_prop exists
            if str(df.iloc[row,7]) == "nan": #role doesn't exist
                file.write('\t\t{ en = "' + str(df.iloc[row,9]) + '",\n\t\t es = "' + str(df.iloc[row,10]) + '",\n\t\t type = "' + str(df.iloc[row,6]) + '", text_prop = "' + str(df.iloc[row,8]) + '" },\n\n')
            else: #role exists
                file.write('\t\t{ en = "' + str(df.iloc[row,9]) + '",\n\t\t es = "' + str(df.iloc[row,10]) + '",\n\t\t type = "' + str(df.iloc[row,6]) + '", text_prop = "' + str(df.iloc[row,8]) + '", role = "' + str(df.iloc[row,7]) + '" },\n\n')
        else:  #text_prop doesn't exist
            file.write('\t\t{ en = "' + str(df.iloc[row,9]) + '",\n\t\t es = "' + str(df.iloc[row,10]) + '",\n\t\t type = "' + str(df.iloc[row,6]) + '", role = "' + str(df.iloc[row,7]) + '" },\n\n')
        row += 1
    file.write('\t},\n\n')
    file.write('\t--------------------------------------------------------------------\n')
    file.write('\t-- BOSSES\n')
    file.write('\t--------------------------------------------------------------------\n\n')
    boss_name = str(df.iloc[row,3])
    file.write('\t["' + boss_name + '"] = {\n')
    file.write('\t\tname = { en = "' + str(df.iloc[row,4]) + '", es = "' + str(df.iloc[row,5]) + '" },\n')
    return boss_name, row
    
with open('Dungeon_Text.lua', 'w', encoding = "utf-8") as file:
    
    num_rows = len(df.iloc[:,3])
    row = 0
    
    boss_name, row = Trash(file,row)
    
    while row < num_rows:
        if str(df.iloc[row,3]) == boss_name:
            if str(df.iloc[row,8]) == "nan" and str(df.iloc[row,7]) == "nan": #text_prop and role doesn't exist
                file.write('\t\t{ en = "' + str(df.iloc[row,9]) + '",\n\t\t es = "' + str(df.iloc[row,10]) + '",\n\t\t type = "' + str(df.iloc[row,6]) + '" },\n\n')
            elif str(df.iloc[row,8]) != "nan":  #text_prop exists
                if str(df.iloc[row,7]) == "nan": #role doesn't exist
                    file.write('\t\t{ en = "' + str(df.iloc[row,9]) + '",\n\t\t es = "' + str(df.iloc[row,10]) + '",\n\t\t type = "' + str(df.iloc[row,6]) + '", text_prop = "' + str(df.iloc[row,8]) + '" },\n\n')
                else: #role exists
                    file.write('\t\t{ en = "' + str(df.iloc[row,9]) + '",\n\t\t es = "' + str(df.iloc[row,10]) + '",\n\t\t type = "' + str(df.iloc[row,6]) + '", text_prop = "' + str(df.iloc[row,8]) + '", role = "' + str(df.iloc[row,7]) + '" },\n\n')
            else:  #text_prop doesn't exist
                file.write('\t\t{ en = "' + str(df.iloc[row,9]) + '",\n\t\t es = "' + str(df.iloc[row,10]) + '",\n\t\t type = "' + str(df.iloc[row,6]) + '", role = "' + str(df.iloc[row,7]) + '" },\n\n')
            row += 1
        else:
            file.write('\t},\n')
            boss_name = str(df.iloc[row,3])
            if boss_name != "Trash":
                file.write('\t["' + boss_name + '"] = {\n')
                file.write('\t\tname = { en = "' + str(df.iloc[row,4]) + '", es = "' + str(df.iloc[row,5]) + '" },\n')
            else:
                file.write('\t},\n\n')
                boss_name, row = Trash(file,row)
    file.write('\t},\n')
    file.write('\t},')