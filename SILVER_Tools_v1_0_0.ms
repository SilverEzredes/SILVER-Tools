rollout SilverTools "SILVER Tools 1.0.0"
(
	group "Materials:" (
		
		button btn_addmaterial "Add Material" tooltip:"Adds the current material to the selected mesh." align:#center
		on btn_addmaterial pressed do
		(
			mat = StandardMaterial()
			for obj in selection do
			(
				mat.diffuse = color (random 0 255) (random 0 255) (random 0 255)
				obj.material = mat
			)
		)
		
		button btn_removeMat "Remove Material" tooltip:"Removes the material from the selected mesh."align:#center
		on btn_removeMat pressed do
		(
			for obj in selection do
			(
				obj.material = undefined
			)
		)			
		
		button btn_randomize "Randomize Color" tooltip:"Randomizes the color of the selected mesh." align:#center
		on btn_randomize pressed do
		(
			for obj in selection do
			(
				obj.wirecolor = color (random 0 255) (random 0 255) (random 0 255)
			)
		)
	)

	group "Bones:" (
		
		colorPicker bonecolor "Bone Color:" color:(color 0 255 0) align:#center
		button btn_setbonecolor "Apply Bone Color" tooltip:"Sets the color of the selected bones." align:#center
		on btn_setbonecolor pressed do
		(
			for obj in selection do
			(
				obj.wirecolor = bonecolor.color
			)
		)
	)
)
createDialog SilverTools
cui.RegisterDialogBar SilverTools style:#(#cui_dock_all, #cui_floatable, #cui_handles)