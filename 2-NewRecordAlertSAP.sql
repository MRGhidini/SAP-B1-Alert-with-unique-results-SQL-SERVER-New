DECLARE @QtdNovos AS int
select a.DocEntry,a.DocTotal, a.Requester as 'Solicitante', u.U_NAME as 'Criador' into #Registronovos from OPRQ a inner join OUSR u on(a.UserSign = u.USERID) where a.DocEntry not in(select DocEntry from [@OPRQ_RESULT]);
select @QtdNovos = isnull(count(*),0) from #Registronovos;

if(isnull(@QtdNovos,0) > 0)
begin
	--Display
	select * from #Registronovos;

	--tosave
	insert into [@OPRQ_RESULT]
		select DocEntry, getdate() from #Registronovos;
end

drop table #Registronovos;