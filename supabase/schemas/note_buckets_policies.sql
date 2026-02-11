CREATE POLICY "Allow users to view their own note files"
ON storage.objects
FOR ALL
TO authenticated, anon
USING (bucket_id = 'notes')
WITH CHECK (bucket_id = 'notes');
